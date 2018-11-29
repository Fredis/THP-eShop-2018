class ItemsController < ApplicationController
  def index
  	@items = Item.all
    redirect_to root_path

  end

  def show
  	@item = Item.find(params[:id])
  end

  def add_to_cart

  	@cart = Cart.find(session[:cart_id])
  	puts params[:id]
  	@cart.items << Item.find(params[:id])

    respond_to do |format|
       format.html { redirect_to email_path(params[:id]) }
       format.js
    end
  end

end
