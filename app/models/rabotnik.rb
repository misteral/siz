class Rabotnik < ActiveRecord::Base
    belongs_to :otdel
    belongs_to :dolgnost
    belongs_to :rost
    belongs_to :razmer_od
    has_many :docs
    validates :otdel_id, :dolgnost_id, :rost_id, :razmer_od, :presence => true
    #has_many :reg_drs
    accepts_nested_attributes_for :docs
    def rabotnik_fio_tn
    "#{fam} #{imy.first}. #{otch.first}. - #{tn}"
    end
end
