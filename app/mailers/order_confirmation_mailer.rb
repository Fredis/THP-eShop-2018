class OrderConfirmationMailer < ApplicationMailer

	def order_confirmation_email
	
		@order = params[:order]  
		@user = params[:user] 

		puts "////////////////"
		puts params[:order]
		puts params[:user]

		mail(from: "cedricsoares@me.com", to: @user.email,
		      subject: "Confirmation de commande numéro #{@order_id}")
	  	end

  	def admin_confirmation_email

  		@order = params[:order] 
		@user = params[:user] 


		puts "////////////////"
		puts params[:order]
		puts params[:usder]

	    mail(from: "cedricsoares@me.com", to: "picyourcatcom+admin@gmail.com", 
	    subject: "Confirmation de commande #{@order.id} numéro du client #{@user.id} ")
  	end 
end



