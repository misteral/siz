class Rabotnik < ActiveRecord::Base
    belongs_to :otdel
    belongs_to :dolgnost
    belongs_to :rost
    belongs_to :razmer_od
    belongs_to :razmer_o
    belongs_to :pol
    has_many :docs
    validates :fam, :otch, :imy, :tn, :otdel_id, :dolgnost_id, :pol_id, :rost_id, :razmer_od_id, :razmer_o_id, :presence => true

    has_many :pologenos, :through => :dolgnost #достанем то, что ему положено по должности

    #has_many :reg_drs
    accepts_nested_attributes_for :docs
    def rabotnik_fio_tn
    "#{fam} #{imy.first}. #{otch.first}. - #{tn}"
    end
end
