class TipDocsController < ApplicationController
  # GET /tip_docs
  # GET /tip_docs.json
  def index
    @tip_docs = TipDoc.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tip_docs }
    end
  end

  # GET /tip_docs/1
  # GET /tip_docs/1.json
  def show
    @tip_doc = TipDoc.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tip_doc }
    end
  end

  # GET /tip_docs/new
  # GET /tip_docs/new.json
  def new
    @tip_doc = TipDoc.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tip_doc }
    end
  end

  # GET /tip_docs/1/edit
  def edit
    @tip_doc = TipDoc.find(params[:id])
  end

  # POST /tip_docs
  # POST /tip_docs.json
  def create
    @tip_doc = TipDoc.new(params[:tip_doc])

    respond_to do |format|
      if @tip_doc.save
        format.html { redirect_to @tip_doc, notice: 'Tip doc was successfully created.' }
        format.json { render json: @tip_doc, status: :created, location: @tip_doc }
      else
        format.html { render action: "new" }
        format.json { render json: @tip_doc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tip_docs/1
  # PUT /tip_docs/1.json
  def update
    @tip_doc = TipDoc.find(params[:id])

    respond_to do |format|
      if @tip_doc.update_attributes(params[:tip_doc])
        format.html { redirect_to @tip_doc, notice: 'Tip doc was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tip_doc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tip_docs/1
  # DELETE /tip_docs/1.json
  def destroy
    @tip_doc = TipDoc.find(params[:id])
    @tip_doc.destroy

    respond_to do |format|
      format.html { redirect_to tip_docs_url }
      format.json { head :no_content }
    end
  end
end
