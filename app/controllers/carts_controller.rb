class CartsController < ApplicationController
  
  def show
  	@cart = Cart.find(session[:cart_id])
  	@items = @cart.items
  end

  def destroy
    
  end

  def new

  end

  def create
  	

  end

  def cart_check_existence(user_id)

  end

end
