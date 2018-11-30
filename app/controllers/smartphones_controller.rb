class SmartphonesController < ApplicationController
  def index
  end

  def new
  	@smartphones = Smartphone.new
  end

  def create
  end
end
