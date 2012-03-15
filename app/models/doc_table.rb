class DocTable < ActiveRecord::Base
  belongs_to :siz
  belongs_to :doc
  belongs_to :razmer
end
