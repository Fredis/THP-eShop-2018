class OrderConfirmationMailer < ApplicationMailer

	def order_confirmation_email
    #@user = User.find(params[:id])
    #@order = Order.find(params[:id])
    mail(from: "cedricsoares@me.com", to: "picyourcatcom+client@gmail.com",
          subject: "Confirmation de commande numéro #{order.id}")
  end

  def admin_confirmation_email
    #@user = User.find(params[:id])
    #@order = Order.find([:id])
    mail(from: "cedricsoares@me.com", to: "picyourcatcom+admin@gmail.com" , 
          subject: "Confirmation de commande numéro de l'utilisateur ")
  end 
end



