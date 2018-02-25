class Breed < ActiveRecord::Base
    validates :name, presence: true
end