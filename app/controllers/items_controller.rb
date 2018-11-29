class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @items = Item.new
  end

  def create
    @item = Item.create
    @item.image_url.attach(params[:image_url])
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    @item.image_url.attach(params[:image_url])
    redirect_to @item.id
  end
end
