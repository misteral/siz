class RostsController < ApplicationController
  # GET /rosts
  # GET /rosts.json
  def index
    @rosts = Rost.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rosts }
    end
  end

  # GET /rosts/1
  # GET /rosts/1.json
  def show
    @rost = Rost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rost }
    end
  end

  # GET /rosts/new
  # GET /rosts/new.json
  def new
    @rost = Rost.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rost }
    end
  end

  # GET /rosts/1/edit
  def edit
    @rost = Rost.find(params[:id])
  end

  # POST /rosts
  # POST /rosts.json
  def create
    @rost = Rost.new(params[:rost])

    respond_to do |format|
      if @rost.save
        format.html { redirect_to @rost, notice: 'Rost was successfully created.' }
        format.json { render json: @rost, status: :created, location: @rost }
      else
        format.html { render action: "new" }
        format.json { render json: @rost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rosts/1
  # PUT /rosts/1.json
  def update
    @rost = Rost.find(params[:id])

    respond_to do |format|
      if @rost.update_attributes(params[:rost])
        format.html { redirect_to @rost, notice: 'Rost was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @rost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rosts/1
  # DELETE /rosts/1.json
  def destroy
    @rost = Rost.find(params[:id])
    @rost.destroy

    respond_to do |format|
      format.html { redirect_to rosts_url }
      format.json { head :no_content }
    end
  end
end
