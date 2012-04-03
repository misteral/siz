class Doc < ActiveRecord::Base
  belongs_to :sklad
  belongs_to :postavshik
  belongs_to :rabotnik
  has_many :doc_tables, :dependent => :destroy
  belongs_to :tip_doc
  #has_many :usr_histories, :dependent => :destroy
  accepts_nested_attributes_for :doc_tables, :reject_if => :all_blank
  #attr_accessor :siz_id, :siz_name, :siz_nom, :siz_sert
  #attr_accessor :siz_name
end
