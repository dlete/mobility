class InstitutionCategoriesController < ApplicationController
  # GET /institution_categories
  # GET /institution_categories.json
  def index
    @institution_categories = InstitutionCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @institution_categories }
    end
  end

  # GET /institution_categories/1
  # GET /institution_categories/1.json
  def show
    @institution_category = InstitutionCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @institution_category }
    end
  end

  # GET /institution_categories/new
  # GET /institution_categories/new.json
  def new
    @institution_category = InstitutionCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @institution_category }
    end
  end

  # GET /institution_categories/1/edit
  def edit
    @institution_category = InstitutionCategory.find(params[:id])
  end

  # POST /institution_categories
  # POST /institution_categories.json
  def create
    @institution_category = InstitutionCategory.new(params[:institution_category])

    respond_to do |format|
      if @institution_category.save
        format.html { redirect_to @institution_category, notice: 'Institution category was successfully created.' }
        format.json { render json: @institution_category, status: :created, location: @institution_category }
      else
        format.html { render action: "new" }
        format.json { render json: @institution_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /institution_categories/1
  # PUT /institution_categories/1.json
  def update
    @institution_category = InstitutionCategory.find(params[:id])

    respond_to do |format|
      if @institution_category.update_attributes(params[:institution_category])
        format.html { redirect_to @institution_category, notice: 'Institution category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @institution_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /institution_categories/1
  # DELETE /institution_categories/1.json
  def destroy
    @institution_category = InstitutionCategory.find(params[:id])
    @institution_category.destroy

    respond_to do |format|
      format.html { redirect_to institution_categories_url }
      format.json { head :no_content }
    end
  end
end
