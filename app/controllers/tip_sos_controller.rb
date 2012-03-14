class TipSosController < ApplicationController
  # GET /tip_sos
  # GET /tip_sos.json
  def index
    @tip_sos = TipSo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tip_sos }
    end
  end

  # GET /tip_sos/1
  # GET /tip_sos/1.json
  def show
    @tip_so = TipSo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tip_so }
    end
  end

  # GET /tip_sos/new
  # GET /tip_sos/new.json
  def new
    @tip_so = TipSo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tip_so }
    end
  end

  # GET /tip_sos/1/edit
  def edit
    @tip_so = TipSo.find(params[:id])
  end

  # POST /tip_sos
  # POST /tip_sos.json
  def create
    @tip_so = TipSo.new(params[:tip_so])

    respond_to do |format|
      if @tip_so.save
        format.html { redirect_to @tip_so, notice: 'Tip so was successfully created.' }
        format.json { render json: @tip_so, status: :created, location: @tip_so }
      else
        format.html { render action: "new" }
        format.json { render json: @tip_so.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tip_sos/1
  # PUT /tip_sos/1.json
  def update
    @tip_so = TipSo.find(params[:id])

    respond_to do |format|
      if @tip_so.update_attributes(params[:tip_so])
        format.html { redirect_to @tip_so, notice: 'Tip so was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tip_so.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tip_sos/1
  # DELETE /tip_sos/1.json
  def destroy
    @tip_so = TipSo.find(params[:id])
    @tip_so.destroy

    respond_to do |format|
      format.html { redirect_to tip_sos_url }
      format.json { head :no_content }
    end
  end
end
