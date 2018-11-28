class UploadsController < ApplicationController

  def new
    @items = Item.new(params[:photo_url])
  end

  def create
    @items = Item.create.(params[:photo_url])

        redirect_to uploads_path
  end

end
