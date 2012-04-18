class Ed < ActiveRecord::Base
  has_many :doc_tables
  has_many :pologenos
end
