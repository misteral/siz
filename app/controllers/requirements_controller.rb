class RequirementsController < ApplicationController

  def index
    if params['date_reg']
      date_reg = Date.parse(params['date_reg'])
      @req_fields = DocTable.requirements.all
      @req_fields.each_index do |key|
        dop_month = @req_fields[key]['nagod']*12
        needly =(dop_month.month.since(@req_fields[key]['updated_at'])).to_date
        @req_fields[key]['potr'] = ( date_reg > needly ) ? 1:0 #если дата в форме больше вычисленно значит есть потребность
      end
      @req_fields.group_by(&:siz_id).group_by(&:rost_id).map do |k,v|
        puts "d"
      end
    end
    respond_to do |format|
      format.html  # index.html.erb
      #format.json  { render :json => @posts }
    end
  end
end
