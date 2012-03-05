class RabotniksController < ApplicationController
  # GET /rabotniks
  # GET /rabotniks.json
  def index
    @rabotniks = Rabotnik.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rabotniks }
    end
  end

  # GET /rabotniks/1
  # GET /rabotniks/1.json
  def show
    @rabotnik = Rabotnik.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rabotnik }
    end
  end

  # GET /rabotniks/new
  # GET /rabotniks/new.json
  def new
    @rabotnik = Rabotnik.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rabotnik }
    end
  end

  # GET /rabotniks/1/edit
  def edit
    @rabotnik = Rabotnik.find(params[:id])
  end

  # POST /rabotniks
  # POST /rabotniks.json
  def create
    @rabotnik = Rabotnik.new(params[:rabotnik])

    respond_to do |format|
      if @rabotnik.save
        format.html { redirect_to @rabotnik, notice: 'Rabotnik was successfully created.' }
        format.json { render json: @rabotnik, status: :created, location: @rabotnik }
      else
        format.html { render action: "new" }
        format.json { render json: @rabotnik.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rabotniks/1
  # PUT /rabotniks/1.json
  def update
    @rabotnik = Rabotnik.find(params[:id])

    respond_to do |format|
      if @rabotnik.update_attributes(params[:rabotnik])
        format.html { redirect_to @rabotnik, notice: 'Rabotnik was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @rabotnik.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rabotniks/1
  # DELETE /rabotniks/1.json
  def destroy
    @rabotnik = Rabotnik.find(params[:id])
    @rabotnik.destroy

    respond_to do |format|
      format.html { redirect_to rabotniks_url }
      format.json { head :no_content }
    end
  end
end
