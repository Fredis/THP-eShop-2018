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

		it "Is not valid without a title" do
			subject.title = nil
			expect(subject).to_not be_valid
		end

		it "Is not valid without a description" do
			subject.description = nil
			expect(subject).to_not be_valid
		end  

		it "Is not valid without a price" do
			subject.price = nil
			expect(subject).to_not be_valid
		end

		it "Is not valid with a price under $1 " do
			expect(subject.price).to_not eql(0)
		end 
	end
end

