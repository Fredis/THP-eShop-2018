require 'rails_helper'
require 'spec_helper'

RSpec.describe Cart, type: :model do
	subject {
		described_class.new(user_id: 12)
	}

	context "When a new cart is created" do
		
		it { should validate_presence_of(:user_id) }

		it do
			should have_db_column(:user_id).of_type(:integer)
		end 

		it { should have_db_index(:user_id) }

	end

	context "Associatons" do

		it { should belong_to(:user) }

		it { should have_and_belong_to_many(:items) }
	end


end





