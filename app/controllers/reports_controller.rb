class ReportsController < ApplicationController
  def ostatoks
    @ostatoks = DocTable.ost
  end
end
