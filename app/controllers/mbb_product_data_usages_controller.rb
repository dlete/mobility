class MbbProductDataUsagesController < ApplicationController
  # GET /mbb_product_data_usages
  # GET /mbb_product_data_usages.json
  def index
    @mbb_product_data_usages = MbbProductDataUsage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mbb_product_data_usages }
    end
  end

  # GET /mbb_product_data_usages/1
  # GET /mbb_product_data_usages/1.json
  def show
    @mbb_product_data_usage = MbbProductDataUsage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mbb_product_data_usage }
    end
  end

  # GET /mbb_product_data_usages/new
  # GET /mbb_product_data_usages/new.json
  def new
    load_auxiliary_data
    @mbb_product_data_usage = MbbProductDataUsage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mbb_product_data_usage }
    end
  end

  # GET /mbb_product_data_usages/1/edit
  def edit
    load_auxiliary_data
    @mbb_product_data_usage = MbbProductDataUsage.find(params[:id])
  end

  # POST /mbb_product_data_usages
  # POST /mbb_product_data_usages.json
  def create
    @mbb_product_data_usage = MbbProductDataUsage.new(params[:mbb_product_data_usage])

    respond_to do |format|
      if @mbb_product_data_usage.save
        format.html { redirect_to @mbb_product_data_usage, notice: 'Mbb product data usage was successfully created.' }
        format.json { render json: @mbb_product_data_usage, status: :created, location: @mbb_product_data_usage }
      else
        format.html { render action: "new" }
        format.json { render json: @mbb_product_data_usage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mbb_product_data_usages/1
  # PUT /mbb_product_data_usages/1.json
  def update
    @mbb_product_data_usage = MbbProductDataUsage.find(params[:id])

    respond_to do |format|
      if @mbb_product_data_usage.update_attributes(params[:mbb_product_data_usage])
        format.html { redirect_to @mbb_product_data_usage, notice: 'Mbb product data usage was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mbb_product_data_usage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mbb_product_data_usages/1
  # DELETE /mbb_product_data_usages/1.json
  def destroy
    @mbb_product_data_usage = MbbProductDataUsage.find(params[:id])
    @mbb_product_data_usage.destroy

    respond_to do |format|
      format.html { redirect_to mbb_product_data_usages_url }
      format.json { head :no_content }
    end
  end

  private
  def load_auxiliary_data
    @mbb_products = MbbProduct.find(:all, :order => "name")
  end
end
