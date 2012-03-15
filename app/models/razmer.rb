class Razmer < ActiveRecord::Base
  has_many :rabotniks
  has_many :doc_tables
end
