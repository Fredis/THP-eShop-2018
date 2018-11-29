require 'rails_helper'

RSpec.describe ItemsController, type: :controller do

	describe 'Get index' do 
		before { get :index }
		it { should respond_with(302) }
		it { should redirect_to(root_path) }
	end 

	describe 'Get show' do 

		before do
      		create(:item, id: 1)
            end
           
            it do
            	params = {
                	id: 1,
                	item: {
                	title: 'Miaoouth',
                	description: 'This is a wonderfull cat',
                	price: 122 ,
                	image_url: 'foo@bar.com'
                 }
               }
               should permit(:title, :description, :price, :image_url).
                 for(:show, params: params).
                 on(:item)
             end
	end 
		
end
