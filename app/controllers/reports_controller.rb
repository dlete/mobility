class ReportsController < ApplicationController
  def index
  end

  def bobadas
    @date = params[:date_in_gui] ? Date.parse(params[:date_in_gui]) : Date.today

    @unique_products = products_names
  end

  def connections_month
    @date = params[:date_in_gui] ? Date.parse(params[:date_in_gui]) : Date.today.months_ago(1)
    @mbb_season = mbb_season_of_date(@date)

    @reported_product_units_in_month = reported_product_units_in_period(@date.beginning_of_month, @date.end_of_month)
    @reported_product_units_in_season = reported_product_units_in_period(@mbb_season.season_begin, @mbb_season.season_end).values.sum
    gon.product_units_formated = @reported_product_units_in_month.to_a

    @invalid_product_units_in_month = invalid_product_units_in_period(@date.beginning_of_month, @date.end_of_month)
    @invalid_product_units_in_season = invalid_product_units_in_period(@mbb_season.season_begin, @mbb_season.season_end).values.sum

    @reported_channel_units_in_month = reported_channel_units_in_period(@date.beginning_of_month, @date.end_of_month)

    # http://stackoverflow.com/questions/4339553/sort-hash-by-key-return-hash-in-ruby
    # This is an array of arrays
    @reported_institution_units_in_month = reported_institution_units_in_period(@date.beginning_of_month, @date.end_of_month).to_a.sort_by { |a,b| b}.reverse
  end

  def historicals_seasons
    @sh = seasons_historicals
    gon.series_season_2011_name = 2011
    gon.series_season_2011_data = @sh[2011].values
    gon.series_season_2010_name = 2010
    gon.series_season_2010_data = @sh[2010].values
    gon.series_season_2009_name = 2009
    gon.series_season_2009_data = @sh[2009].values
    gon.series_season_2008_name = 2008
    gon.series_season_2008_data = @sh[2008].values
  end

# -----------------------------------
# auxlliary methods
  def mbb_products
    @mbb_products = MbbProduct.find(:all, :order => "name")
  end

  def invalid_product_units_in_period(date_beginning, date_end)
    @invalid_product_units_in_period = Hash.new
    for mbb_product in mbb_products
      @invalid_product_units_in_period[mbb_product.name] = MbbConnection.count(:provider_subscriber_id,
                                                                               :distinct => true,
                                                                               :conditions => { :transaction_date => date_beginning..date_end,
                                                                                                :institution_subscriber_id => "",
                                                                                                :institution_abbreviation => "",
                                                                                                :product_name => mbb_product.name
                                                                                              }
                                                                              )
    end
    return @invalid_product_units_in_period
  end

  def reported_product_units_in_period(date_beginning, date_end)
    @reported_product_units_in_period = Hash.new
    for mbb_product in mbb_products
      @reported_product_units_in_period[mbb_product.name] = MbbConnection.count(:provider_subscriber_id,
                                                                                :conditions => { :transaction_date => date_beginning..date_end,
                                                                                                 :product_name => mbb_product.name
                                                                                               }
                                                                               )
    end
    return @reported_product_units_in_period
  end

  def mbb_channels
    @mbb_channels = MbbChannel.find(:all, :order => "name")
  end

  def reported_channel_units_in_period(date_beginning, date_end)
    @reported_channel_units_in_period = Hash.new
    for mbb_channel in mbb_channels
      @reported_channel_units_in_period[mbb_channel.name] = MbbConnection.count(:provider_subscriber_id,
                                                                                :conditions => { :transaction_date => date_beginning..date_end,
                                                                                                 :channel_name => mbb_channel.name
                                                                                               }
                                                                               )
    end
    return @reported_channel_units_in_period
  end


  def mbb_seasons
    @mbb_seasons = MbbSeason.find(:all, :order => "season_end DESC")
  end

  def mbb_season_of_date(date)
    mbb_seasons.each do |mbb_season|
      return mbb_season if ((date >= mbb_season.season_begin) & (date <= mbb_season.season_end))
    end
  end

  def mbb_institution_abbreviations
    @mbb_institution_abbreviation = MbbInstitutionAbbreviation.all
  end

  def reported_institution_units_in_period(date_beginning, date_end)
    @reported_institution_units_in_period = Hash.new
    for mbb_institution_abbreviation in mbb_institution_abbreviations
      @reported_institution_units_in_period[mbb_institution_abbreviation.institution.name] = 
        MbbConnection.count(:provider_subscriber_id,
                            :conditions => { :transaction_date => date_beginning..date_end,
                                             :institution_abbreviation => mbb_institution_abbreviation.abbreviation
                                           }
        )
    end
    return @reported_institution_units_in_period
  end

# -----------------------------------
  def seasons_historicals
    @seasons_historicals = Hash.new
    for mbb_season in mbb_seasons
      @season_months = Hash.new
      @date = mbb_season.season_begin
      while @date <  mbb_season.season_end
        @season_months[@date.month] = MbbConnection.where(:transaction_date => @date.beginning_of_month..@date.end_of_month).count
        @date = @date.months_since(1)
      end
      @seasons_historicals[mbb_season.season_begin.year] = @season_months
    end
    # this is a hash of hashes. Each of the hashes 
    return @seasons_historicals
  end
# -----------------------------------



  # not used at the moment
  def delete_connections_in_time_range(date_beginning, date_end)
    @products_to_delete = MbbConnection.find(:all, :conditions => { :transaction_date => date_beginning..date_end } )
    @products_to_delete.each do |d|
      d.destroy
    end
  end

end
