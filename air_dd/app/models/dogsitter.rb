class Dogsitter < ApplicationRecord
	has_many :dogs
	belongs_to :city
end
