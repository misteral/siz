class RequirementController < ApplicationController

  def index
    if :params['date_reg']
      @date_reg = :params['date_reg']
    else
      @date_reg = ""
    end
    respond_to do |format|
      format.html  # index.html.erb
      #format.json  { render :json => @posts }
    end
  end
end
