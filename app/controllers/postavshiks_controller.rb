class PostavshiksController < ApplicationController
  # GET /postavshiks
  # GET /postavshiks.json
  def index
    @postavshiks = Postavshik.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @postavshiks }
    end
  end

  # GET /postavshiks/1
  # GET /postavshiks/1.json
  def show
    @postavshik = Postavshik.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @postavshik }
    end
  end

  # GET /postavshiks/new
  # GET /postavshiks/new.json
  def new
    @postavshik = Postavshik.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @postavshik }
    end
  end

  # GET /postavshiks/1/edit
  def edit
    @postavshik = Postavshik.find(params[:id])
  end

  # POST /postavshiks
  # POST /postavshiks.json
  def create
    @postavshik = Postavshik.new(params[:postavshik])

    respond_to do |format|
      if @postavshik.save
        format.html { redirect_to @postavshik, notice: 'Postavshik was successfully created.' }
        format.json { render json: @postavshik, status: :created, location: @postavshik }
      else
        format.html { render action: "new" }
        format.json { render json: @postavshik.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /postavshiks/1
  # PUT /postavshiks/1.json
  def update
    @postavshik = Postavshik.find(params[:id])

    respond_to do |format|
      if @postavshik.update_attributes(params[:postavshik])
        format.html { redirect_to @postavshik, notice: 'Postavshik was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @postavshik.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /postavshiks/1
  # DELETE /postavshiks/1.json
  def destroy
    @postavshik = Postavshik.find(params[:id])
    @postavshik.destroy

    respond_to do |format|
      format.html { redirect_to postavshiks_url }
      format.json { head :no_content }
    end
  end
end
