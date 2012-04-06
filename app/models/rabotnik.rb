class Rabotnik < ActiveRecord::Base
    belongs_to :otdel
    belongs_to :dolgnost
    has_many :docs
    #has_many :reg_drs
    accepts_nested_attributes_for :docs
    def rabotnik_fio_tn
    "#{fam} #{imy.first}. #{otch.first}. - #{tn}"
    end
end
