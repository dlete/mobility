class InstitutionsController < ApplicationController
  # GET /institutions
  # GET /institutions.json
  def index
    load_auxiliary_data
    @institutions = Institution.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @institutions }
    end
  end

  # GET /institutions/1
  # GET /institutions/1.json
  def show
    load_auxiliary_data
    @institution = Institution.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @institution }
    end
  end

  # GET /institutions/new
  # GET /institutions/new.json
  def new
    load_auxiliary_data
    @institution = Institution.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @institution }
    end
  end

  # GET /institutions/1/edit
  def edit
    load_auxiliary_data
    @institution = Institution.find(params[:id])
  end

  # POST /institutions
  # POST /institutions.json
  def create
    @institution = Institution.new(params[:institution])

    respond_to do |format|
      if @institution.save
        format.html { redirect_to @institution, notice: 'Institution was successfully created.' }
        format.json { render json: @institution, status: :created, location: @institution }
      else
        format.html { render action: "new" }
        format.json { render json: @institution.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /institutions/1
  # PUT /institutions/1.json
  def update
    load_auxiliary_data
    @institution = Institution.find(params[:id])

    respond_to do |format|
      if @institution.update_attributes(params[:institution])
        format.html { redirect_to @institution, notice: 'Institution was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @institution.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /institutions/1
  # DELETE /institutions/1.json
  def destroy
    @institution = Institution.find(params[:id])
    @institution.destroy

    respond_to do |format|
      format.html { redirect_to institutions_url }
      format.json { head :no_content }
    end
  end

  private
  def load_auxiliary_data
    @institution_categories = InstitutionCategory.find(:all, :order => "name")
  end
end