class RegDrsController < ApplicationController
  # GET /reg_drs
  # GET /reg_drs.json
  def index
    @reg_drs = RegDr.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @reg_drs }
    end
  end

  # GET /reg_drs/1
  # GET /reg_drs/1.json
  def show
    @reg_dr = RegDr.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @reg_dr }
    end
  end

  # GET /reg_drs/new
  # GET /reg_drs/new.json
  def new
    @reg_dr = RegDr.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @reg_dr }
    end
  end

  # GET /reg_drs/1/edit
  def edit
    @reg_dr = RegDr.find(params[:id])
  end

  # POST /reg_drs
  # POST /reg_drs.json
  def create
    @reg_dr = RegDr.new(params[:reg_dr])

    respond_to do |format|
      if @reg_dr.save
        format.html { redirect_to @reg_dr, notice: 'Reg dr was successfully created.' }
        format.json { render json: @reg_dr, status: :created, location: @reg_dr }
      else
        format.html { render action: "new" }
        format.json { render json: @reg_dr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /reg_drs/1
  # PUT /reg_drs/1.json
  def update
    @reg_dr = RegDr.find(params[:id])

    respond_to do |format|
      if @reg_dr.update_attributes(params[:reg_dr])
        format.html { redirect_to @reg_dr, notice: 'Reg dr was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @reg_dr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reg_drs/1
  # DELETE /reg_drs/1.json
  def destroy
    @reg_dr = RegDr.find(params[:id])
    @reg_dr.destroy

    respond_to do |format|
      format.html { redirect_to reg_drs_url }
      format.json { head :no_content }
    end
  end
end
