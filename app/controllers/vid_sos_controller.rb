class VidSosController < ApplicationController
  # GET /vid_sos
  # GET /vid_sos.json
  def index
    @vid_sos = VidSo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @vid_sos }
    end
  end

  # GET /vid_sos/1
  # GET /vid_sos/1.json
  def show
    @vid_so = VidSo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @vid_so }
    end
  end

  # GET /vid_sos/new
  # GET /vid_sos/new.json
  def new
    @vid_so = VidSo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @vid_so }
    end
  end

  # GET /vid_sos/1/edit
  def edit
    @vid_so = VidSo.find(params[:id])
  end

  # POST /vid_sos
  # POST /vid_sos.json
  def create
    @vid_so = VidSo.new(params[:vid_so])

    respond_to do |format|
      if @vid_so.save
        format.html { redirect_to @vid_so, notice: 'Vid so was successfully created.' }
        format.json { render json: @vid_so, status: :created, location: @vid_so }
      else
        format.html { render action: "new" }
        format.json { render json: @vid_so.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /vid_sos/1
  # PUT /vid_sos/1.json
  def update
    @vid_so = VidSo.find(params[:id])

    respond_to do |format|
      if @vid_so.update_attributes(params[:vid_so])
        format.html { redirect_to @vid_so, notice: 'Vid so was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @vid_so.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vid_sos/1
  # DELETE /vid_sos/1.json
  def destroy
    @vid_so = VidSo.find(params[:id])
    @vid_so.destroy

    respond_to do |format|
      format.html { redirect_to vid_sos_url }
      format.json { head :no_content }
    end
  end
end
