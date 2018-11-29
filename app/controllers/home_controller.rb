class HomeController < ApplicationController


	def index
		@items = Item.all
     
      if user_signed_in?
         if Cart.find_by(user_id: current_user.id) == nil
                Cart.create(user_id: current_user.id)
                session[:cart_id] = Cart.find_by(user_id: current_user.id).id
            else
                session[:cart_id] = Cart.find_by(user_id: current_user.id).id                 
            end
     end
	end
end