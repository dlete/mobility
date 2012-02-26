class ReportsController < ApplicationController
  def index
  end

  def bobadas
    @date = params[:date_in_gui] ? Date.parse(params[:date_in_gui]) : Date.today

    @unique_products = products_names
  end

  def connections_month
    @date = params[:date_in_gui] ? Date.parse(params[:date_in_gui]) : Date.today.months_ago(1)

    if @date.month < 9
      @season_date_begin = Date.parse(@date.prev_year.strftime("%Y-09-01"))
      @season_date_end   = Date.parse(@date.strftime("%Y-08-01")).end_of_month
    elsif
      @season_date_begin = Date.parse(@date.strftime("%Y-09-01"))
      @season_date_end   = Date.parse(@date.next_year.strftime("%Y-08-01")).end_of_month
    end

    @reported_product_units_in_month = reported_product_units_in_period(@date.beginning_of_month, @date.end_of_month)
    @reported_product_units_in_season = reported_product_units_in_period(@season_date_begin, @season_date_end).values.sum
    gon.product_units_formated = @reported_product_units_in_month.to_a

    @invalid_product_units_in_month = invalid_product_units_in_period(@date.beginning_of_month, @date.end_of_month)
    @invalid_product_units_in_season = invalid_product_units_in_period(@season_date_begin, @season_date_end).values.sum
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
# -----------------------------------

  # not used at the moment
  def delete_connections_in_time_range(date_beginning, date_end)
    @products_to_delete = MbbConnection.find(:all, :conditions => { :transaction_date => date_beginning..date_end } )
    @products_to_delete.each do |d|
      d.destroy
    end
  end

end
