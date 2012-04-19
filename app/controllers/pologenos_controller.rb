class PologenosController < ApplicationController
  # GET /pologenos
  # GET /pologenos.json
  def index
    @pologenos = Pologeno.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pologenos }
    end
  end

  # GET /pologenos/1
  # GET /pologenos/1.json
  def show
    @pologeno = Pologeno.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pologeno }
    end
  end

  # GET /pologenos/new
  # GET /pologenos/new.json
  def new
    @pologeno = Pologeno.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pologeno }
    end
  end

  # GET /pologenos/1/edit
  def edit
    @pologeno = Pologeno.find(params[:id])
  end

  # POST /pologenos
  # POST /pologenos.json
  def create
    @pologeno = Pologeno.new(params[:pologeno])

    respond_to do |format|
      if @pologeno.save
        format.html { redirect_to @pologeno, notice: 'Pologeno was successfully created.' }
        format.json { render json: @pologeno, status: :created, location: @pologeno }
      else
        format.html { render action: "new" }
        format.json { render json: @pologeno.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pologenos/1
  # PUT /pologenos/1.json
  def update
    @pologeno = Pologeno.find(params[:id])

    respond_to do |format|
      if @pologeno.update_attributes(params[:pologeno])
        format.html { redirect_to @pologeno, notice: 'Pologeno was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pologeno.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pologenos/1
  # DELETE /pologenos/1.json
  def destroy
    @pologeno = Pologeno.find(params[:id])
    @pologeno.destroy

    respond_to do |format|
      format.html { redirect_to pologenos_url }
      format.json { head :no_content }
    end
  end
end
