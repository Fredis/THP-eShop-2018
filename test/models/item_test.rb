require 'test_helper'

class ItemTest < ActiveSupport::TestCase

	Rspec.describe Item, type: :model do 
		subject { described_class.new(title: "Anything", description: "Anything",
	 		 	price: "12", image_url: "imageid.com," )
	 	}

 		context "When a new item is created by admin" do 

		 	it "Is valid with valid attributes" do 
		 		expect(subject).to be_valid
		 	end

		 	It "Is not valid without a title" do
			  	subject.title = nil 
			  	expect(subject).to not_be_valid
		  	end

		 	it "Is not valid without a description" do 
		  		subject.description = nil 
		  		expect(subject).to not_be_valid 
		  	end  

		  	it "Is not valid without a price" do 
		  		subject.price = nil
		  		expect(subject).to not_be_valid 
			end

			it "Is not valid with a price equal under $1 " 
				subject.price < 1
				expect(subject).to not_be_valid
			end 
		end
	end	
end
