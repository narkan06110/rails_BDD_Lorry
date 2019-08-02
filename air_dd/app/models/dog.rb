class Dog < ApplicationRecord
	belongs_to :dogsitter
	belongs_to :city
end
