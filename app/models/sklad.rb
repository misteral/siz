class Sklad < ActiveRecord::Base
  has_many :docs
  has_many :ostatoks
  accepts_nested_attributes_for :docs
  accepts_nested_attributes_for :ostatoks
end
