class RazmerOdsController < ApplicationController
  # GET /razmer_ods
  # GET /razmer_ods.json
  def index
    @razmer_ods = RazmerOd.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @razmer_ods }
    end
  end

  # GET /razmer_ods/1
  # GET /razmer_ods/1.json
  def show
    @razmer_od = RazmerOd.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @razmer_od }
    end
  end

  # GET /razmer_ods/new
  # GET /razmer_ods/new.json
  def new
    @razmer_od = RazmerOd.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @razmer_od }
    end
  end

  # GET /razmer_ods/1/edit
  def edit
    @razmer_od = RazmerOd.find(params[:id])
  end

  # POST /razmer_ods
  # POST /razmer_ods.json
  def create
    @razmer_od = RazmerOd.new(params[:razmer_od])

    respond_to do |format|
      if @razmer_od.save
        format.html { redirect_to @razmer_od, notice: 'Razmer od was successfully created.' }
        format.json { render json: @razmer_od, status: :created, location: @razmer_od }
      else
        format.html { render action: "new" }
        format.json { render json: @razmer_od.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /razmer_ods/1
  # PUT /razmer_ods/1.json
  def update
    @razmer_od = RazmerOd.find(params[:id])

    respond_to do |format|
      if @razmer_od.update_attributes(params[:razmer_od])
        format.html { redirect_to @razmer_od, notice: 'Razmer od was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @razmer_od.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /razmer_ods/1
  # DELETE /razmer_ods/1.json
  def destroy
    @razmer_od = RazmerOd.find(params[:id])
    @razmer_od.destroy

    respond_to do |format|
      format.html { redirect_to razmer_ods_url }
      format.json { head :no_content }
    end
  end
end
