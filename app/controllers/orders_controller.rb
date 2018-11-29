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

	def order_validation
		@cart = Cart.find(session[:cart_id])
		@items = @cart.items
		@order = Order.create(user_id: current_user.id, status: "Payment done.")
		
		puts "yooooooooo"
		puts @order.errors.messages
		@items.each do |element|
			@order.items << element
		end

		#set variables to use mailers 
		items_to_email = @order.items
		order_id = @order.id


		#send a confirmation email to customer
		OrderConfirmationMailer.order_confirmation_email(order.id, current_user.id, items_to_email)

		#send a confirmation email to admin 
		OrderConfirmationMailer.admin_confirmation_email(order.id, current_user.id, items_to_email)


		@items.destroy
		Cart.find(session[:cart_id]).destroy
		session.delete(:cart_id)
		
		Cart.create(user_id: current_user.id)
		session[:cart_id] = Cart.find_by(user_id: current_user.id).id
	end

end