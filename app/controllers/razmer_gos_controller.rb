class RazmerGosController < ApplicationController
  # GET /razmer_gos
  # GET /razmer_gos.json
  def index
    @razmer_gos = RazmerGo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @razmer_gos }
    end
  end

  # GET /razmer_gos/1
  # GET /razmer_gos/1.json
  def show
    @razmer_go = RazmerGo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @razmer_go }
    end
  end

  # GET /razmer_gos/new
  # GET /razmer_gos/new.json
  def new
    @razmer_go = RazmerGo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @razmer_go }
    end
  end

  # GET /razmer_gos/1/edit
  def edit
    @razmer_go = RazmerGo.find(params[:id])
  end

  # POST /razmer_gos
  # POST /razmer_gos.json
  def create
    @razmer_go = RazmerGo.new(params[:razmer_go])

    respond_to do |format|
      if @razmer_go.save
        format.html { redirect_to @razmer_go, notice: 'Razmer go was successfully created.' }
        format.json { render json: @razmer_go, status: :created, location: @razmer_go }
      else
        format.html { render action: "new" }
        format.json { render json: @razmer_go.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /razmer_gos/1
  # PUT /razmer_gos/1.json
  def update
    @razmer_go = RazmerGo.find(params[:id])

    respond_to do |format|
      if @razmer_go.update_attributes(params[:razmer_go])
        format.html { redirect_to @razmer_go, notice: 'Razmer go was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @razmer_go.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /razmer_gos/1
  # DELETE /razmer_gos/1.json
  def destroy
    @razmer_go = RazmerGo.find(params[:id])
    @razmer_go.destroy

    respond_to do |format|
      format.html { redirect_to razmer_gos_url }
      format.json { head :no_content }
    end
  end
end
