class ReportsController < ApplicationController
  def index
  end

  def bobadas
    @date = params[:date_in_gui] ? Date.parse(params[:date_in_gui]) : Date.today

    @unique_products = products_names
  end

  def connections_month
    @date = params[:date_in_gui] ? Date.parse(params[:date_in_gui]) : Date.today

    @products_units = product_units_in_month(@date)
  end

  def products_names 
    # http://api.rubyonrails.org/classes/ActiveRecord/Relation.html#method-i-to_a
    @unique_products = MbbConnection.select(:product_name).uniq.to_a
    return @unique_products
  end

  def unique_product_units_in_time_range(date_beginning, date_end, product_name)
    @product_units = MbbConnection.count( :conditions => { :transaction_date => date_beginning..date_end,
                                                          :product_name => product_name
                                                        }
                                       )
  end

  def product_units_in_month(date)
    @products_month = Hash.new
    @unique_products = products_names
    for unique_product in @unique_products
      @products_month[unique_product.product_name] = unique_product_units_in_time_range(date.beginning_of_month, date.end_of_month, unique_product.product_name)
    end
    return @products_month
  end
end
