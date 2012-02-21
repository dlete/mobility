class ReportsController < ApplicationController
  def index
  end

  def bobadas
    @date = params[:date_in_gui] ? Date.parse(params[:date_in_gui]) : Date.today

    @unique_products = products_names
  end

  def connections_month
    @date = params[:date_in_gui] ? Date.parse(params[:date_in_gui]) : Date.today.months_ago(1)

    @products_units = product_units_in_month(@date)

    @product_units_formated = @products_units.to_a
    gon.product_units_formated = @product_units_formated
    # dlete 2012-02-16

    if @date.month < 9
      @season_date_begin = Date.parse(@date.prev_year.strftime("%Y-09-01"))
      @season_date_end   = Date.parse(@date.strftime("%Y-08-01")).end_of_month
    elsif
      @season_date_begin = Date.parse(@date.strftime("%Y-09-01"))
      @season_date_end   = Date.parse(@date.next_year.strftime("%Y-08-01")).end_of_month
    end

    @product_units_in_season = product_units_in_time_range(@season_date_begin, @season_date_end)


    @invalid_products_units = invalid_product_units_in_month(@date)
    @invalid_product_units_in_season = invalid_product_units_in_season(@season_date_begin, @season_date_end)
  end

  def products_names 
    # http://api.rubyonrails.org/classes/ActiveRecord/Relation.html#method-i-to_a
    @unique_products = MbbConnection.select(:product_name).uniq.to_a
    return @unique_products
  end

  def product_units_in_time_range(date_beginning, date_end)
    @product_units = MbbConnection.count( :conditions => { :transaction_date => date_beginning..date_end } )
  end

  def unique_product_units_in_time_range(date_beginning, date_end, product_name)
    @product_units = MbbConnection.count( :conditions => { :transaction_date => date_beginning..date_end,
                                                           :product_name => product_name
                                                        }
                     )
  end

# dlete, begin
  def invalid_product_units_in_time_range(date_beginning, date_end, product_name)
    @invalid_product_units = MbbConnection.count( :provider_subscriber_id, 
                                                  :distinct => true, 
                                                  :conditions => { :transaction_date => date_beginning..date_end,
                                                                   :institution_subscriber_id => "",
                                                                   :institution_abbreviation => "",
                                                                   :product_name => product_name
                                                                 }
                             )
  end

  def invalid_product_units_in_season(date_beginning, date_end)
    @invalid_products_season = Hash.new
    @unique_products = products_names
    for unique_product in @unique_products
      @invalid_products_season = invalid_product_units_in_time_range(date_beginning, date_end, unique_product.product_name)
    end
    @total_invalid_products_season = @invalid_products_season
  end
# dlete, end

  def product_units_in_month(date)
    @products_month = Hash.new
    @unique_products = products_names
    for unique_product in @unique_products
      @products_month[unique_product.product_name] = unique_product_units_in_time_range(date.beginning_of_month, date.end_of_month, unique_product.product_name)
    end
    return @products_month
  end

  def invalid_product_units_in_month(date)
    @invalid_products_month = Hash.new
    @unique_products = products_names
    for unique_product in @unique_products
      @invalid_products_month[unique_product.product_name] = invalid_product_units_in_time_range(date.beginning_of_month, date.end_of_month, unique_product.product_name)
    end
    return @invalid_products_month
  end


# begin, from the app nmb
#  def connections_month
#    @date = params[:date_in_gui] ? Date.parse(params[:date_in_gui]) : Date.today
#    @connections_in_month = connections_in_time_range(@date.beginning_of_month, @date.end_of_month)
#    @connections_month_beggin_to_date = connections_month_beggin_to_date(@date)
#  end

  def connections_in_time_range(date_beginning, date_end)
    @connections = Connection.find(:all, :conditions => { :transaction_date => date_beginning..date_end } )
    @connections_in_time_range = @connections.count
  end

  def connections_month_beggin_to_date(date_end)
    @connections_month = Hash.new
    @date_month = Date.parse("2011-09-01")
    @date_end = date_end
    while @date_month.end_of_month < @date_end.end_of_month
      @connections_month[Date::MONTHNAMES[@date_month.month]] = connections_in_time_range(@date_month.beginning_of_month, @date_month.end_of_month)
      @date_month = @date_month >> 1
    end
    return @connections_month
  end
# end, from the app nmb

  # not used at the moment
  def delete_connections_in_time_range(date_beginning, date_end)
    @products_to_delete = MbbConnection.find(:all, :conditions => { :transaction_date => date_beginning..date_end } )
    @products_to_delete.each do |d|
      d.destroy
    end
  end

end
