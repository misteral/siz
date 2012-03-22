class TipSo < ActiveRecord::Base
  has_many :sizs
  accepts_nested_attributes_for :sizs
end
