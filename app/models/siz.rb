class Siz < ActiveRecord::Base
  belongs_to :tip_so
  belongs_to :vid_so
  has_many :doc_tables
  has_many :ostatoks
  has_many :reg_drs

  accepts_nested_attributes_for :doc_tables
  accepts_nested_attributes_for :ostatoks
end
