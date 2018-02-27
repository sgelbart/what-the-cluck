class Hatch < ActiveRecord::Base
  has_one :posts, as: :postable
  belongs_to :hatchery
  has_many :images, as: :imageable
  accepts_nested_attributes_for :images
end