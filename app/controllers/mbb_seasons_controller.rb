class MbbSeasonsController < ApplicationController
  # GET /mbb_seasons
  # GET /mbb_seasons.json
  def index
    @mbb_seasons = MbbSeason.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mbb_seasons }
    end
  end

  # GET /mbb_seasons/1
  # GET /mbb_seasons/1.json
  def show
    @mbb_season = MbbSeason.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mbb_season }
    end
  end

  # GET /mbb_seasons/new
  # GET /mbb_seasons/new.json
  def new
    @mbb_season = MbbSeason.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mbb_season }
    end
  end

  # GET /mbb_seasons/1/edit
  def edit
    @mbb_season = MbbSeason.find(params[:id])
  end

  # POST /mbb_seasons
  # POST /mbb_seasons.json
  def create
    @mbb_season = MbbSeason.new(params[:mbb_season])

    respond_to do |format|
      if @mbb_season.save
        format.html { redirect_to @mbb_season, notice: 'Mbb season was successfully created.' }
        format.json { render json: @mbb_season, status: :created, location: @mbb_season }
      else
        format.html { render action: "new" }
        format.json { render json: @mbb_season.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mbb_seasons/1
  # PUT /mbb_seasons/1.json
  def update
    @mbb_season = MbbSeason.find(params[:id])

    respond_to do |format|
      if @mbb_season.update_attributes(params[:mbb_season])
        format.html { redirect_to @mbb_season, notice: 'Mbb season was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mbb_season.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mbb_seasons/1
  # DELETE /mbb_seasons/1.json
  def destroy
    @mbb_season = MbbSeason.find(params[:id])
    @mbb_season.destroy

    respond_to do |format|
      format.html { redirect_to mbb_seasons_url }
      format.json { head :no_content }
    end
  end
end
