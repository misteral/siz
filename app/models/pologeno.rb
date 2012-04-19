class Pologeno < ActiveRecord::Base
  belongs_to :siz
  belongs_to :dolgnost
  belongs_to :ed
  validates :siz_id, :ed_id, :presence => true
  validates :nagod, :presence => true, :numericality => {:only_decimal =>true}
end
