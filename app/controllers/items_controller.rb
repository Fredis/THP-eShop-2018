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
    @items = Item.create
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.update.attach(params[:image_url])
  end
end
