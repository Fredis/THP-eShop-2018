class Item < ApplicationRecord
	validates :title, :description, :price, :image_url, presence: true
	validates :price, numericality: { greater_than: 0, message: "The value has to be greater than 0." }
end
