class Doc < ActiveRecord::Base
  belongs_to :sklad
  belongs_to :postavshik
  belongs_to :rabotnik
  belongs_to :tip_doc
  validates :sklad_id, :tip_doc_id, :presence => true

  has_many :doc_tables, :dependent => :destroy
  accepts_nested_attributes_for :doc_tables, :reject_if => :all_blank

  validates_associated :doc_tables
  #has_many :reg_drs, :dependent => :destroy
  #accepts_nested_attributes_for :reg_drs, :reject_if => :all_blank

  scope :with_utv, where(:utv => true, :tip_doc_id => [1,2])
  #has_many :usr_histories, :dependent => :destroy
  #attr_accessor :siz_id, :siz_name, :siz_nom, :siz_sert
  #attr_accessor :siz_name

end
