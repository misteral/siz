class UsrHistory < ActiveRecord::Base
  belongs_to :doc
  belongs_to :siz
end
