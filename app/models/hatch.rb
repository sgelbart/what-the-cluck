class Hatch < ActiveRecord::Base
  has_one :posts, as: :postable
  belongs_to :hatchery
end