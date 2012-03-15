class Doc < ActiveRecord::Base
  belongs_to :sklad
  belongs_to :postavshik
  belongs_to :rabotnik
  has_many :doc_tables
  belongs_to :tip_doc
  has_many :usr_histories
end
