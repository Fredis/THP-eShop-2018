class Order < ApplicationRecord
	belongs_to :user
	has_and_belongs_to_many :items
	validates :user_id, uniqueness: :true
end
