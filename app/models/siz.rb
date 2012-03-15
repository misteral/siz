class Siz < ActiveRecord::Base
  belongs_to :tip_so
  belongs_to :vid_so
  has_many :doc_tables
  has_many :usr_histories
  has_many :ostatoks
end
