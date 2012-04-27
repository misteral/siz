class RequirementsController < ApplicationController

  def index
    if params['date_reg']
      date_reg = Date.parse(params['date_reg'])
      req_fields = DocTable.requirements.all
      req_fields.each_index do |key|
        dop_month = req_fields[key]['nagod']*12
        needly =(dop_month.month.since(req_fields[key]['updated_at'])).to_date
        req_fields[key]['potr'] = ( date_reg > needly ) ? 1:0 #если дата в форме больше вычисленно значит есть потребность
      end
      req_fields.delete_if{|d| d['potr'] == 0}

      #--Магия связанная с группировкой
      @summary = {}
      req_fields.each do |rec|
        siz_id = rec[:siz_id]
        rost_id = rec[:rost_id]
        razmer_od_id = rec[:razmer_od_id]
        kol = rec[:kol]*(-1)
        ((@summary[siz_id] ||= {})[rost_id] ||= {})[razmer_od_id] ||= 0
        @summary[siz_id][rost_id][razmer_od_id] += kol
      end
      #--Магия связанная с группировкой

    end #if
    respond_to do |format|
      format.html  # index.html.erb
      #format.json  { render :json => @posts }
    end
  end
end

