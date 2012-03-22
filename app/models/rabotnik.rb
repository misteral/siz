class Rabotnik < ActiveRecord::Base
    belongs_to :otdel
    belongs_to :dolgnost
    belongs_to :razmer
    has_many :docs
    accepts_nested_attributes_for :docs
    def rabotnik_fio_tn
    "#{fam} #{imy.first}. #{otch.first}. - #{tn}"
    end
end
