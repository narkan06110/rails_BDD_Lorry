class JoinTableGossipTag < ApplicationRecord
	belongs_to :gossip_item
	belongs_to :tag
end
