class OrderConfirmationMailer < ApplicationMailer

	def order_confirmation_email
    user = User.find(params[:id])
    order = Order.find(params[:id])
    mail(from: "thpgrowthtasvu@gmail.com", to: "user.mail",
          subject: "Confirmation de commande numéro #{order.id}")
   end



	 #def order_confirmation_mail(user)

    #mail(
     # to: cedricsoares@me.com,
     # delivery_method_options: { api_key: 'Rails.application.credentials.dig(:mailjet.api_key)', secret_key: 'Rails.application.credentials.dig(:mailjet.secret_key)' }
    #)
  #end
end



