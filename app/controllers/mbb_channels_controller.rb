class MbbChannelsController < ApplicationController
  # GET /mbb_channels
  # GET /mbb_channels.json
  def index
    @mbb_channels = MbbChannel.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mbb_channels }
    end
  end

  # GET /mbb_channels/1
  # GET /mbb_channels/1.json
  def show
    @mbb_channel = MbbChannel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mbb_channel }
    end
  end

  # GET /mbb_channels/new
  # GET /mbb_channels/new.json
  def new
    @mbb_channel = MbbChannel.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mbb_channel }
    end
  end

  # GET /mbb_channels/1/edit
  def edit
    @mbb_channel = MbbChannel.find(params[:id])
  end

  # POST /mbb_channels
  # POST /mbb_channels.json
  def create
    @mbb_channel = MbbChannel.new(params[:mbb_channel])

    respond_to do |format|
      if @mbb_channel.save
        format.html { redirect_to @mbb_channel, notice: 'Mbb channel was successfully created.' }
        format.json { render json: @mbb_channel, status: :created, location: @mbb_channel }
      else
        format.html { render action: "new" }
        format.json { render json: @mbb_channel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mbb_channels/1
  # PUT /mbb_channels/1.json
  def update
    @mbb_channel = MbbChannel.find(params[:id])

    respond_to do |format|
      if @mbb_channel.update_attributes(params[:mbb_channel])
        format.html { redirect_to @mbb_channel, notice: 'Mbb channel was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mbb_channel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mbb_channels/1
  # DELETE /mbb_channels/1.json
  def destroy
    @mbb_channel = MbbChannel.find(params[:id])
    @mbb_channel.destroy

    respond_to do |format|
      format.html { redirect_to mbb_channels_url }
      format.json { head :no_content }
    end
  end
end
