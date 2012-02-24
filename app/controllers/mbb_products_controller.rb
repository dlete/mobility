class MbbProductsController < ApplicationController
  # GET /mbb_products
  # GET /mbb_products.json
  def index
    @mbb_products = MbbProduct.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mbb_products }
    end
  end

  # GET /mbb_products/1
  # GET /mbb_products/1.json
  def show
    @mbb_product = MbbProduct.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mbb_product }
    end
  end

  # GET /mbb_products/new
  # GET /mbb_products/new.json
  def new
    @mbb_product = MbbProduct.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mbb_product }
    end
  end

  # GET /mbb_products/1/edit
  def edit
    @mbb_product = MbbProduct.find(params[:id])
  end

  # POST /mbb_products
  # POST /mbb_products.json
  def create
    @mbb_product = MbbProduct.new(params[:mbb_product])

    respond_to do |format|
      if @mbb_product.save
        format.html { redirect_to @mbb_product, notice: 'Mbb product was successfully created.' }
        format.json { render json: @mbb_product, status: :created, location: @mbb_product }
      else
        format.html { render action: "new" }
        format.json { render json: @mbb_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mbb_products/1
  # PUT /mbb_products/1.json
  def update
    @mbb_product = MbbProduct.find(params[:id])

    respond_to do |format|
      if @mbb_product.update_attributes(params[:mbb_product])
        format.html { redirect_to @mbb_product, notice: 'Mbb product was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mbb_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mbb_products/1
  # DELETE /mbb_products/1.json
  def destroy
    @mbb_product = MbbProduct.find(params[:id])
    @mbb_product.destroy

    respond_to do |format|
      format.html { redirect_to mbb_products_url }
      format.json { head :no_content }
    end
  end
end
