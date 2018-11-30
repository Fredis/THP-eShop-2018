class Cart < ApplicationRecord
belongs_to :user
has_and_belongs_to_many :items
validates :user_id, presence: true, uniqueness: :true
end
