class DocTable < ActiveRecord::Base
  belongs_to :siz
  belongs_to :doc
  belongs_to :rost
  #belongs_to :razmer_go
  #belongs_to :razmer_o
  belongs_to :razmer_od
  belongs_to :ed

  validates :siz_id, :rost_id, :razmer_od_id, :ed_id, :presence => true
  validates :kol, :presence => true, :numericality => { :only_decimal => true }
  attr_accessible :id, :kol, :siz_id, :ed_id, :razmer_od_id, :razmer_go_id, :razmer_o_id, :rost_id


=begin
  def self.ost #определение остатка
    select('siz_id,rost_id,razmer_od_id, SUM(kol) as kol').
    joins(:doc).where('docs.utv'=>true,'docs.tip_doc_id' => [1,2]).
    group('doc_tables.razmer_od_id, doc_tables.rost_id, doc_tables.siz_id ')
  end
=end

end
