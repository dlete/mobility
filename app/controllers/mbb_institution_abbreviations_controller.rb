class MbbInstitutionAbbreviationsController < ApplicationController
  # GET /mbb_institution_abbreviations
  # GET /mbb_institution_abbreviations.json
  def index
    @mbb_institution_abbreviations = MbbInstitutionAbbreviation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mbb_institution_abbreviations }
    end
  end

  # GET /mbb_institution_abbreviations/1
  # GET /mbb_institution_abbreviations/1.json
  def show
    @mbb_institution_abbreviation = MbbInstitutionAbbreviation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mbb_institution_abbreviation }
    end
  end

  # GET /mbb_institution_abbreviations/new
  # GET /mbb_institution_abbreviations/new.json
  def new
    @mbb_institution_abbreviation = MbbInstitutionAbbreviation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mbb_institution_abbreviation }
    end
  end

  # GET /mbb_institution_abbreviations/1/edit
  def edit
    @mbb_institution_abbreviation = MbbInstitutionAbbreviation.find(params[:id])
  end

  # POST /mbb_institution_abbreviations
  # POST /mbb_institution_abbreviations.json
  def create
    @mbb_institution_abbreviation = MbbInstitutionAbbreviation.new(params[:mbb_institution_abbreviation])

    respond_to do |format|
      if @mbb_institution_abbreviation.save
        format.html { redirect_to @mbb_institution_abbreviation, notice: 'Mbb institution abbreviation was successfully created.' }
        format.json { render json: @mbb_institution_abbreviation, status: :created, location: @mbb_institution_abbreviation }
      else
        format.html { render action: "new" }
        format.json { render json: @mbb_institution_abbreviation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mbb_institution_abbreviations/1
  # PUT /mbb_institution_abbreviations/1.json
  def update
    @mbb_institution_abbreviation = MbbInstitutionAbbreviation.find(params[:id])

    respond_to do |format|
      if @mbb_institution_abbreviation.update_attributes(params[:mbb_institution_abbreviation])
        format.html { redirect_to @mbb_institution_abbreviation, notice: 'Mbb institution abbreviation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mbb_institution_abbreviation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mbb_institution_abbreviations/1
  # DELETE /mbb_institution_abbreviations/1.json
  def destroy
    @mbb_institution_abbreviation = MbbInstitutionAbbreviation.find(params[:id])
    @mbb_institution_abbreviation.destroy

    respond_to do |format|
      format.html { redirect_to mbb_institution_abbreviations_url }
      format.json { head :no_content }
    end
  end
end
