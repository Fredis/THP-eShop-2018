class OrdersController < ApplicationController

	def index
	@cart = Cart.find(session[:cart_id])
  	@items = @cart.items
	end

	def show
	end

end
