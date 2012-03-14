class DolgnostsController < ApplicationController
  # GET /dolgnosts
  # GET /dolgnosts.json
  def index
    @dolgnosts = Dolgnost.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dolgnosts }
    end
  end

  # GET /dolgnosts/1
  # GET /dolgnosts/1.json
  def show
    @dolgnost = Dolgnost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dolgnost }
    end
  end

  # GET /dolgnosts/new
  # GET /dolgnosts/new.json
  def new
    @dolgnost = Dolgnost.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dolgnost }
    end
  end

  # GET /dolgnosts/1/edit
  def edit
    @dolgnost = Dolgnost.find(params[:id])
  end

  # POST /dolgnosts
  # POST /dolgnosts.json
  def create
    @dolgnost = Dolgnost.new(params[:dolgnost])

    respond_to do |format|
      if @dolgnost.save
        format.html { redirect_to @dolgnost, notice: 'Dolgnost was successfully created.' }
        format.json { render json: @dolgnost, status: :created, location: @dolgnost }
      else
        format.html { render action: "new" }
        format.json { render json: @dolgnost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dolgnosts/1
  # PUT /dolgnosts/1.json
  def update
    @dolgnost = Dolgnost.find(params[:id])

    respond_to do |format|
      if @dolgnost.update_attributes(params[:dolgnost])
        format.html { redirect_to @dolgnost, notice: 'Dolgnost was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @dolgnost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dolgnosts/1
  # DELETE /dolgnosts/1.json
  def destroy
    @dolgnost = Dolgnost.find(params[:id])
    @dolgnost.destroy

    respond_to do |format|
      format.html { redirect_to dolgnosts_url }
      format.json { head :no_content }
    end
  end
end
