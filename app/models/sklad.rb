class Sklad < ActiveRecord::Base
  has_many :docs
  has_many :ostatoks
end
