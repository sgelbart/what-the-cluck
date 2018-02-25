class HatchChick < ActiveRecord::Base
  valides :hatch, presence:true
  belongs_to :hatch
  belongs_to :breed
  enum sex: [:male, :female]
end
