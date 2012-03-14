class SkladsController < ApplicationController
  # GET /sklads
  # GET /sklads.json
  def index
    @sklads = Sklad.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sklads }
    end
  end

  # GET /sklads/1
  # GET /sklads/1.json
  def show
    @sklad = Sklad.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sklad }
    end
  end

  # GET /sklads/new
  # GET /sklads/new.json
  def new
    @sklad = Sklad.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sklad }
    end
  end

  # GET /sklads/1/edit
  def edit
    @sklad = Sklad.find(params[:id])
  end

  # POST /sklads
  # POST /sklads.json
  def create
    @sklad = Sklad.new(params[:sklad])

    respond_to do |format|
      if @sklad.save
        format.html { redirect_to @sklad, notice: 'Sklad was successfully created.' }
        format.json { render json: @sklad, status: :created, location: @sklad }
      else
        format.html { render action: "new" }
        format.json { render json: @sklad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sklads/1
  # PUT /sklads/1.json
  def update
    @sklad = Sklad.find(params[:id])

    respond_to do |format|
      if @sklad.update_attributes(params[:sklad])
        format.html { redirect_to @sklad, notice: 'Sklad was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sklad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sklads/1
  # DELETE /sklads/1.json
  def destroy
    @sklad = Sklad.find(params[:id])
    @sklad.destroy

    respond_to do |format|
      format.html { redirect_to sklads_url }
      format.json { head :no_content }
    end
  end
end
