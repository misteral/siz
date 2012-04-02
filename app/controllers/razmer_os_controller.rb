class RazmerOsController < ApplicationController
  # GET /razmer_os
  # GET /razmer_os.json
  def index
    @razmer_os = RazmerO.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @razmer_os }
    end
  end

  # GET /razmer_os/1
  # GET /razmer_os/1.json
  def show
    @razmer_o = RazmerO.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @razmer_o }
    end
  end

  # GET /razmer_os/new
  # GET /razmer_os/new.json
  def new
    @razmer_o = RazmerO.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @razmer_o }
    end
  end

  # GET /razmer_os/1/edit
  def edit
    @razmer_o = RazmerO.find(params[:id])
  end

  # POST /razmer_os
  # POST /razmer_os.json
  def create
    @razmer_o = RazmerO.new(params[:razmer_o])

    respond_to do |format|
      if @razmer_o.save
        format.html { redirect_to @razmer_o, notice: 'Razmer o was successfully created.' }
        format.json { render json: @razmer_o, status: :created, location: @razmer_o }
      else
        format.html { render action: "new" }
        format.json { render json: @razmer_o.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /razmer_os/1
  # PUT /razmer_os/1.json
  def update
    @razmer_o = RazmerO.find(params[:id])

    respond_to do |format|
      if @razmer_o.update_attributes(params[:razmer_o])
        format.html { redirect_to @razmer_o, notice: 'Razmer o was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @razmer_o.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /razmer_os/1
  # DELETE /razmer_os/1.json
  def destroy
    @razmer_o = RazmerO.find(params[:id])
    @razmer_o.destroy

    respond_to do |format|
      format.html { redirect_to razmer_os_url }
      format.json { head :no_content }
    end
  end
end
