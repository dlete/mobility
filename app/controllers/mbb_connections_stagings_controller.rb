class MbbConnectionsStagingsController < ApplicationController
  # GET /mbb_connections_stagings
  # GET /mbb_connections_stagings.json
  def index
    @mbb_connections_stagings = MbbConnectionsStaging.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mbb_connections_stagings }
    end
  end

  # GET /mbb_connections_stagings/1
  # GET /mbb_connections_stagings/1.json
  def show
    @mbb_connections_staging = MbbConnectionsStaging.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mbb_connections_staging }
    end
  end

  # GET /mbb_connections_stagings/new
  # GET /mbb_connections_stagings/new.json
  def new
    @mbb_connections_staging = MbbConnectionsStaging.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mbb_connections_staging }
    end
  end

  # GET /mbb_connections_stagings/1/edit
  def edit
    @mbb_connections_staging = MbbConnectionsStaging.find(params[:id])
  end

  # POST /mbb_connections_stagings
  # POST /mbb_connections_stagings.json
  def create
    @mbb_connections_staging = MbbConnectionsStaging.new(params[:mbb_connections_staging])

    respond_to do |format|
      if @mbb_connections_staging.save
        format.html { redirect_to @mbb_connections_staging, notice: 'Mbb connections staging was successfully created.' }
        format.json { render json: @mbb_connections_staging, status: :created, location: @mbb_connections_staging }
      else
        format.html { render action: "new" }
        format.json { render json: @mbb_connections_staging.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mbb_connections_stagings/1
  # PUT /mbb_connections_stagings/1.json
  def update
    @mbb_connections_staging = MbbConnectionsStaging.find(params[:id])

    respond_to do |format|
      if @mbb_connections_staging.update_attributes(params[:mbb_connections_staging])
        format.html { redirect_to @mbb_connections_staging, notice: 'Mbb connections staging was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mbb_connections_staging.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mbb_connections_stagings/1
  # DELETE /mbb_connections_stagings/1.json
  def destroy
    @mbb_connections_staging = MbbConnectionsStaging.find(params[:id])
    @mbb_connections_staging.destroy

    respond_to do |format|
      format.html { redirect_to mbb_connections_stagings_url }
      format.json { head :no_content }
    end
  end
end
