class RazmerGo < ActiveRecord::Base
  has_many :doc_tables
  has_many :reg_drs
end
