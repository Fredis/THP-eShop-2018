class OrdersController < ApplicationController

	def index
	  @cart = Cart.find(session[:cart_id])
  	  @items = @cart.items
	end



	def create

	end

	def payment_history
		puts "hahahahahaha"
		@orders = User.find(current_user.id).orders
	end

end
