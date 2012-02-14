class MbbConnectionsController < ApplicationController
  # GET /mbb_connections
  # GET /mbb_connections.json
  def index
    @mbb_connections = MbbConnection.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mbb_connections }
    end
  end

  # GET /mbb_connections/1
  # GET /mbb_connections/1.json
  def show
    @mbb_connection = MbbConnection.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mbb_connection }
    end
  end

  # GET /mbb_connections/new
  # GET /mbb_connections/new.json
  def new
    @mbb_connection = MbbConnection.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mbb_connection }
    end
  end

  # GET /mbb_connections/1/edit
  def edit
    @mbb_connection = MbbConnection.find(params[:id])
  end

  # POST /mbb_connections
  # POST /mbb_connections.json
  def create
    @mbb_connection = MbbConnection.new(params[:mbb_connection])

    respond_to do |format|
      if @mbb_connection.save
        format.html { redirect_to @mbb_connection, notice: 'Mbb connection was successfully created.' }
        format.json { render json: @mbb_connection, status: :created, location: @mbb_connection }
      else
        format.html { render action: "new" }
        format.json { render json: @mbb_connection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mbb_connections/1
  # PUT /mbb_connections/1.json
  def update
    @mbb_connection = MbbConnection.find(params[:id])

    respond_to do |format|
      if @mbb_connection.update_attributes(params[:mbb_connection])
        format.html { redirect_to @mbb_connection, notice: 'Mbb connection was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mbb_connection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mbb_connections/1
  # DELETE /mbb_connections/1.json
  def destroy
    @mbb_connection = MbbConnection.find(params[:id])
    @mbb_connection.destroy

    respond_to do |format|
      format.html { redirect_to mbb_connections_url }
      format.json { head :no_content }
    end
  end
end
