class Rost < ActiveRecord::Base
  has_many :doc_tables
  has_many :rabotniks
  #has_many :reg_drs
end
