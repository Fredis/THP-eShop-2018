class OrderConfirmationMailer < ApplicationMailer

	def order_confirmation_email(order.id, current_user.id, items_to_email)
    mail(from: "cedricsoares@me.com", to: "picyourcatcom+client@gmail.com",
          subject: "Confirmation de commande numéro #{order.id}")
  end

  def admin_confirmation_email(order.id, current_user.id, items_to_email)
    mail(from: "cedricsoares@me.com", to: "picyourcatcom+admin@gmail.com", 
          subject: "Confirmation de commande #{order.id} numéro du client #{current_user.id} ")
  end 
end



