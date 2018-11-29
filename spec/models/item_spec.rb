require 'rails_helper'
require 'spec_helper'

RSpec.describe Item, type: :model do
	subject { 
		described_class.new(title: "Anything", description: "Anything",
		price: 12, image_url: "imageid.com" )
	}

	context "When a new item is created by admin" do

		it "Is valid with valid attributes" do
			expect(subject).to be_valid
		end


		it { should validate_presence_of(:title) }


		it { should validate_presence_of(:description) }


		it { should validate_presence_of(:price)}


		it do
			should_not allow_value(0).
				for(:price)
		end

		it { should validate_presence_of(:image_url) }
	end

	context "Associations" do
		
		it { should have_and_belong_to_many(:carts) }

		it { should have_and_belong_to_many(:orders) }
	end

end

