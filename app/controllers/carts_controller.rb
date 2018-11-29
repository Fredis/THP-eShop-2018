class CartsController < ApplicationController
  
  def show
  	@cart = Cart.find(session[:cart_id])
  	@items = @cart.items
  end

  def destroy
    @cart = Cart.find(session[:cart_id])
    @items = @cart.items

    puts params[:id]
    @cart.items.delete(@cart.items.find(params[:id]))

    respond_to do |format|
       format.html { redirect_to cart_path(params[:id]) }
       format.js
    end
  end

  def new

  end

  def create
  	

  end

end
