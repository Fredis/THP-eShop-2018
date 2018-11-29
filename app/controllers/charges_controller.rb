class ChargesController < ApplicationController
	
	def new

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

		redirect_to order_validation_path


	end
end
