class Siz < ActiveRecord::Base
  belongs_to :tip_so
  belongs_to :vid_so
  has_many :doc_tables
  has_many :ostatoks

  #has_many :reg_drs

  accepts_nested_attributes_for :doc_tables
  accepts_nested_attributes_for :ostatoks

  def self.ost  #определение остатка
    select('sizs.name as name, doc_tables.siz_id,doc_tables.rost_id,doc_tables.razmer_od_id, SUM(kol) as kol').
    joins(:doc_tables=>[:doc]).
    where('docs.utv'=>true,'docs.tip_doc_id' => [1,2]).
    group('doc_tables.razmer_od_id, doc_tables.rost_id, doc_tables.siz_id')
  end

  def self.ost_name  #названия для остатков
    select('sizs.id, sizs.name').uniq.
    joins(:doc_tables=>[:doc]).
    where('docs.utv'=>true,'docs.tip_doc_id' => [1,2])
  end

end
