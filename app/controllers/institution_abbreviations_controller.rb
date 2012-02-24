class InstitutionAbbreviationsController < ApplicationController
  # GET /institution_abbreviations
  # GET /institution_abbreviations.json
  def index
    load_auxiliary_data
    @institution_abbreviations = InstitutionAbbreviation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @institution_abbreviations }
    end
  end

  # GET /institution_abbreviations/1
  # GET /institution_abbreviations/1.json
  def show
    load_auxiliary_data
    @institution_abbreviation = InstitutionAbbreviation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @institution_abbreviation }
    end
  end

  # GET /institution_abbreviations/new
  # GET /institution_abbreviations/new.json
  def new
    load_auxiliary_data
    @institution_abbreviation = InstitutionAbbreviation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @institution_abbreviation }
    end
  end

  # GET /institution_abbreviations/1/edit
  def edit
    load_auxiliary_data
    @institution_abbreviation = InstitutionAbbreviation.find(params[:id])
  end

  # POST /institution_abbreviations
  # POST /institution_abbreviations.json
  def create
    @institution_abbreviation = InstitutionAbbreviation.new(params[:institution_abbreviation])

    respond_to do |format|
      if @institution_abbreviation.save
        format.html { redirect_to @institution_abbreviation, notice: 'Institution abbreviation was successfully created.' }
        format.json { render json: @institution_abbreviation, status: :created, location: @institution_abbreviation }
      else
        format.html { render action: "new" }
        format.json { render json: @institution_abbreviation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /institution_abbreviations/1
  # PUT /institution_abbreviations/1.json
  def update
    load_auxiliary_data
    @institution_abbreviation = InstitutionAbbreviation.find(params[:id])

    respond_to do |format|
      if @institution_abbreviation.update_attributes(params[:institution_abbreviation])
        format.html { redirect_to @institution_abbreviation, notice: 'Institution abbreviation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @institution_abbreviation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /institution_abbreviations/1
  # DELETE /institution_abbreviations/1.json
  def destroy
    @institution_abbreviation = InstitutionAbbreviation.find(params[:id])
    @institution_abbreviation.destroy

    respond_to do |format|
      format.html { redirect_to institution_abbreviations_url }
      format.json { head :no_content }
    end
  end

  private
  def load_auxiliary_data
    @institutions = Institution.find(:all, :order => "name")
  end
end
