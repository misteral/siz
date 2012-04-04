class RegDr < ActiveRecord::Base
  belongs_to :siz
  belongs_to :doc
  belongs_to :rost
  belongs_to :razmer_o
  belongs_to :razmer_od
  belongs_to :rabotnik
  belongs_to :razmer_go

  #attr_accessible :id, :doc_id, :kol, :siz_id
end
