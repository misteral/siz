class TipDoc < ActiveRecord::Base
  has_many :docs
  accepts_nested_attributes_for :docs
end
