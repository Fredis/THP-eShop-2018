class OrdersController < ApplicationController

	def index
	  @cart = Cart.find(session[:cart_id])
  	  @items = @cart.items
	end



	def create
	  @items = Cart.find(session[:cart_id]).items
		puts '////////////////'
		puts @items
	  @order = Order.create(user_id: current_user.id, status: "waiting for payment")
	  @items.each do |element|
		@order.items << element
	  end

	 puts @order.items
	
	end

end
