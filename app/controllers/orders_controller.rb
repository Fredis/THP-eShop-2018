class OrdersController < ApplicationController

	def index
	  @cart = Cart.find(session[:cart_id])
  	  @items = @cart.items
	end



	def create
	  @items = Cart.find(session[:cart_id]).items
	  @order = Order.create(user_id: current_user.id, status: "waiting for payment")
	  puts "yooooooooo"
	  puts @order.errors.messages
	  @items.each do |element|
		@order.items << element
	  end
		@items.destroy
 	 Cart.find(session[:cart_id]).destroy
 	 session.delete(:cart_id)

	 @amount = @items.sum(:price)

	 customer = Stripe::Customer.create(
		 :email => params[:stripeEmail],
		 :source  => params[:stripeToken]
	 )
	 charge = Stripe::Charge.create(
		 :customer    => customer.id,
		 :amount      => @amount,
		 :description => 'Kitten\'s payment',
		 :currency    => 'us'
	 )
 rescue Stripe::CardError => e
	 flash[:error] = e.message
	 redirect_to root_path
	end

end
