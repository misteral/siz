class RequirementsController < ApplicationController

  def index
    if params['date_reg']
      date_reg = Date.parse(params['date_reg'])
      @tbl_fields = DocTable.requirements(date_reg)
    end
    respond_to do |format|
      format.html  # index.html.erb
      #format.json  { render :json => @posts }
    end
  end
end
