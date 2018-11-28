class CartsController < ApplicationController
  
  def show


  end

  def destroy
  end

  def new
  	puts "//////"

=begin
  	if cart_check_existence(current_user.id) == true
  		puts "truuuuuueeeeeeeee"
  	else
  		@cart = Carte.create(user_id: current_user.id)
  	end
=end

  end

  def create
  	

  end

  def cart_check_existence(user_id)

  end

end
