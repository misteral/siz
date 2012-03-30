class DocTable < ActiveRecord::Base
  belongs_to :siz
  belongs_to :doc
  belongs_to :rost
  belongs_to :razmer_go
  belongs_to :razmer_o
  belongs_to :razmer_od

  accepts_nested_attributes_for :doc
  attr_accessible :id, :kol
end