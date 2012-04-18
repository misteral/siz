class Dolgnost < ActiveRecord::Base
  has_many :rabotniks
  has_many :pologenos , :dependent => :destroy
  accepts_nested_attributes_for :pologenos, :reject_if => :all_blank
end
