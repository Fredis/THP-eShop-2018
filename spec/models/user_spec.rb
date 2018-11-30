require 'rails_helper'
require 'spec_helper'

RSpec.describe User, type: :model do
	subject { 
		described_class.new(email: "foo@bar.com", password: "foobar", encrypted_password: "ahqs5Jz1Aw9w3S", reset_password_token: "Af5rKo0p1zEgT7xLpOuGiqD")
	}

	context "When a new user is created" do

		it "Is valid with valid attributes" do
			expect(subject).to be_valid
		end

		it { should validate_presence_of(:email) }

		it { should validate_presence_of(:password) }

	end 

	context "Associations" do
		it { should have_one(:cart) }

		it { should have_many(:orders)}
	end
end


		