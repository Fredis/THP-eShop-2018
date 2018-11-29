class ChargesController < ApplicationController
	
	def new
		  @order = Order.create(user_id: current_user.id, status: "Payment done.")
		  puts "yooooooooo"
		  puts @order.errors.messages
		  @items.each do |element|
			@order.items << element
		  end
		 @items.destroy
		 Cart.find(session[:cart_id]).destroy
		 session.delete(:cart_id)
	end

	def create

	  @items = Cart.find(session[:cart_id]).items


		@amount = (@items.sum(:price)*100).to_i
		puts @amount
		customer = Stripe::Customer.create(
		:email => params[:stripeEmail],
		:source  => params[:stripeToken]
		)

		charge = Stripe::Charge.create(
		:customer    => customer.id,
		:amount      => @amount,
		:description => 'Rails Stripe customer',
		:currency    => 'usd'
		)

		rescue Stripe::CardError => e
		flash[:error] = e.message



		redirect_to new_charge_path


	end
end
