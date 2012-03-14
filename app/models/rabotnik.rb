class Rabotnik < ActiveRecord::Base
    belongs_to :otdel
    belongs_to :dolgnost
    belongs_to :razmer
    has_many :docs
end
