class DocTable < ActiveRecord::Base
  belongs_to :siz
  belongs_to :doc
  belongs_to :rost
  belongs_to :razmer_go
  belongs_to :razmer_o
  belongs_to :razmer_od
  belongs_to :ed

  attr_accessible :id, :kol, :siz_id, :ed_id, :razmer_od_id, :razmer_go_id, :razmer_o_id, :rost_id

  def self.ost
    select('siz_id,rost_id,razmer_od_id, SUM(kol) as kol').
    joins(:doc).where('docs.utv'=>true,'docs.tip_doc_id' => [1,2]).
    group (:siz_id, :rost_id, :razmer_od_id)
  end

end
