class EdsController < ApplicationController
  # GET /eds
  # GET /eds.json
  def index
    @eds = Ed.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @eds }
    end
  end

  # GET /eds/1
  # GET /eds/1.json
  def show
    @ed = Ed.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ed }
    end
  end

  # GET /eds/new
  # GET /eds/new.json
  def new
    @ed = Ed.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ed }
    end
  end

  # GET /eds/1/edit
  def edit
    @ed = Ed.find(params[:id])
  end

  # POST /eds
  # POST /eds.json
  def create
    @ed = Ed.new(params[:ed])

    respond_to do |format|
      if @ed.save
        format.html { redirect_to @ed, notice: 'Ed was successfully created.' }
        format.json { render json: @ed, status: :created, location: @ed }
      else
        format.html { render action: "new" }
        format.json { render json: @ed.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /eds/1
  # PUT /eds/1.json
  def update
    @ed = Ed.find(params[:id])

    respond_to do |format|
      if @ed.update_attributes(params[:ed])
        format.html { redirect_to @ed, notice: 'Ed was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ed.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eds/1
  # DELETE /eds/1.json
  def destroy
    @ed = Ed.find(params[:id])
    @ed.destroy

    respond_to do |format|
      format.html { redirect_to eds_url }
      format.json { head :no_content }
    end
  end
end
