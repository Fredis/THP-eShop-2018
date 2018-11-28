class ItemsController < ApplicationController
  def index
  	@items = Item.all
  end

  def show
  	@item = Item.find(params[:id])
  end

  def add_to_cart
  	cart = Cart.find(session[:cart_id])
		puts "yoooooooooo"
  	puts params[:id]
  	cart.items << Item.find(params[:id])
  end

end
