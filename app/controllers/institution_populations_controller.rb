class InstitutionPopulationsController < ApplicationController
  # GET /institution_populations
  # GET /institution_populations.json
  def index
    @institution_populations = InstitutionPopulation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @institution_populations }
    end
  end

  # GET /institution_populations/1
  # GET /institution_populations/1.json
  def show
    @institution_population = InstitutionPopulation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @institution_population }
    end
  end

  # GET /institution_populations/new
  # GET /institution_populations/new.json
  def new
    load_auxiliary_data
    @institution_population = InstitutionPopulation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @institution_population }
    end
  end

  # GET /institution_populations/1/edit
  def edit
    load_auxiliary_data
    @institution_population = InstitutionPopulation.find(params[:id])
  end

  # POST /institution_populations
  # POST /institution_populations.json
  def create
    @institution_population = InstitutionPopulation.new(params[:institution_population])

    respond_to do |format|
      if @institution_population.save
        format.html { redirect_to @institution_population, notice: 'Institution population was successfully created.' }
        format.json { render json: @institution_population, status: :created, location: @institution_population }
      else
        format.html { render action: "new" }
        format.json { render json: @institution_population.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /institution_populations/1
  # PUT /institution_populations/1.json
  def update
    @institution_population = InstitutionPopulation.find(params[:id])

    respond_to do |format|
      if @institution_population.update_attributes(params[:institution_population])
        format.html { redirect_to @institution_population, notice: 'Institution population was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @institution_population.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /institution_populations/1
  # DELETE /institution_populations/1.json
  def destroy
    @institution_population = InstitutionPopulation.find(params[:id])
    @institution_population.destroy

    respond_to do |format|
      format.html { redirect_to institution_populations_url }
      format.json { head :no_content }
    end
  end

  private
  def load_auxiliary_data
    @institutions = Institution.find(:all, :order => "name")
  end
end
