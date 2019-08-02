class User < ApplicationRecord
	has_many :gossip_items
	belongs_to :city
end
