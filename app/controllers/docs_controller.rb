class DocsController < ApplicationController
  autocomplete :siz, :name, :full => true

  def get_autocomplete_items(parameters)
 #   if @tip_docum == '1'
     items = super(parameters)
 #   end
    if @@tip_docum == '2'
      items = Siz.ost_name.where(get_autocomplete_where_clause(parameters[:model],parameters[:term],parameters[:method],parameters[:options]))
    end
  end

 def check_tip
   if params[:tip_docum]
     @tip_docum = params[:tip_docum]
     if @tip_docum == '1'
       @doc_name = TipDoc.find(1).name
       @autocompurl = docs_autocomplete_siz_name_path
     end
     if @tip_docum == '2'
       @doc_name = TipDoc.find(2).name
       @autocompurl = docs_autocomplete_siz_name_path
     end
     if @tip_docum == '3'
       @doc_name = TipDoc.find(3).name
       @autocompurl = docs_autocomplete_siz_name_path
     end
     @@tip_docum = @tip_docum
   end
 end
  # GET /docs
  # GET /docs.json
  def index
    @docs = Doc.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @docs }
    end
  end

  # GET /docs/1
  # GET /docs/1.json
  def show
    @doc = Doc.find(params[:id])
    check_tip
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @doc }
    end
  end

  # GET /docs/new
  # GET /docs/new.json
  def new
    @doc = Doc.new
    check_tip
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @doc }
    end
  end

  # GET /docs/1/edit
  def edit
    @doc = Doc.find(params[:id])
    check_tip
  end

  # POST /docs
  # POST /docs.json
  def create
    @doc = Doc.new(params[:doc])

    respond_to do |format|
      if @doc.save
        format.html { redirect_to @doc, notice: 'Doc was successfully created.' }
        format.json { render json: @doc, status: :created, location: @doc }
      else
        format.html { render action: "new" }
        format.json { render json: @doc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /docs/1
  # PUT /docs/1.json
  #def change_reg

  #end

  def update
    @doc = Doc.find(params[:id])


    #if params[:doc]['utv'] == '1' # действия по проведению документа
=begin
      @par =  params[:doc][:doc_tables_attributes]
      params[:doc][:reg_drs_attributes] = params[:doc][:doc_tables_attributes]
      params[:doc][:reg_drs_attributes].each_key  do |key|
        params[:doc][:reg_drs_attributes][key]['doc_id']=params[:id]
        params[:doc][:reg_drs_attributes][key]['rabotnik_id'] = params[:doc][:rabotnik_id]
      end

      @par =  params[:doc][:doc_tables_attributes]
      params[:doc][:reg_drs_attributes] = params[:doc][:doc_tables_attributes]
      @par.each_key  do |key|
        @par[key]['doc_id']=params[:id]
      end

      params[:doc][:reg_drs_attributes] = @par
      #params[:doc][:reg_drs_attributes] = par
      #params[:doc][:doc_tables_attributes] = par_save
=end
    #end


    respond_to do |format|
      if @doc.update_attributes(params[:doc])
        format.html { redirect_to @doc, notice: 'Doc was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @doc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /docs/1
  # DELETE /docs/1.json
  def destroy
    @doc = Doc.find(params[:id])
    @doc.destroy

    respond_to do |format|
      format.html { redirect_to docs_url }
      format.json { head :no_content }
    end
  end
end
