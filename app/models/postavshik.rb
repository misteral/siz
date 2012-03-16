class Postavshik < ActiveRecord::Base
  has_many :docs
  accessible_attributes :name
end
