class ItemsController < ApplicationController
  def index
    @items = Item.all
    redirect_to root_path

  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @items = Item.new
  end

  def create
    @item = Item.create
    @item.image_url.attach(params[:item][:image_url])
    redirect_to @item
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    @item.image_url.attach(params[:item][:image_url])
    redirect_to @item
  end

  def add_to_cart

    @cart = Cart.find(session[:cart_id])

    if @cart.items.count != 0
      i=0

      @cart.items.each do |item|
        if params[:id].to_i == item.id
          i=1
        end
      end

      if i != 1
        @cart.items << Item.find(params[:id])
      end

    else
      @cart.items << Item.find(params[:id])
    end

    respond_to do |format|
      format.html { redirect_to items_path(params[:id]) }
      format.js
    end
  end

end
