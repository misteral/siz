class SizsController < ApplicationController
  # GET /sizs
  # GET /sizs.json
  def index
    @sizs = Siz.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sizs }
    end
  end

  # GET /sizs/1
  # GET /sizs/1.json
  def show
    @siz = Siz.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @siz }
    end
  end

  # GET /sizs/new
  # GET /sizs/new.json
  def new
    @siz = Siz.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @siz }
    end
  end

  # GET /sizs/1/edit
  def edit
    @siz = Siz.find(params[:id])
  end

  # POST /sizs
  # POST /sizs.json
  def create
    @siz = Siz.new(params[:siz])
      respond_to do |format|
      if @siz.save
        format.html { redirect_to @siz, notice: 'Siz was successfully created.' }
        format.json { render json: @siz, status: :created, location: @siz }
      else
        format.html { render action: "new" }
        format.json { render json: @siz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sizs/1
  # PUT /sizs/1.json
  def update
    @siz = Siz.find(params[:id])

    respond_to do |format|
      if @siz.update_attributes(params[:siz])
        format.html { redirect_to @siz, notice: 'Siz was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @siz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sizs/1
  # DELETE /sizs/1.json
  def destroy
    @siz = Siz.find(params[:id])
    @siz.destroy

    respond_to do |format|
      format.html { redirect_to sizs_url }
      format.json { head :no_content }
    end
  end
end
