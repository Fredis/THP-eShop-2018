class OrdersController < ApplicationController

	def index
	  @cart = Cart.find(session[:cart_id])
  	  @items = @cart.items
	end



	def create

	end

	def payment_history
		
		@orders = User.find(current_user.id).orders
	end

	def order_validation
		@cart = Cart.find(session[:cart_id])
		@items = @cart.items
		@order = Order.create(user_id: current_user.id, status: "Payment done.")
		
		#puts "yooooooooo"
		puts @order.errors.messages
		@items.each do |element|
			@order.items << element
		end

		#set @user to pass current_user.id in mailers
		@user = current_user

		puts '//////////////////////'
		puts @order.id

		#send a confirmation email to customer
		OrderConfirmationMailer.with(order: @order, user: @user).order_confirmation_email.deliver_now

		#send a confirmation email to admin 
		OrderConfirmationMailer.with(order: @order, user: @user).admin_confirmation_email.deliver_now


		@items.destroy
		Cart.find(session[:cart_id]).destroy
		session.delete(:cart_id)
		
		Cart.create(user_id: current_user.id)
		session[:cart_id] = Cart.find_by(user_id: current_user.id).id
	end

end