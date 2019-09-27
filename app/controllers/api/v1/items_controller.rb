class Api::V1::ItemsController < ApplicationController
  skip_before_action :verify_authenticity_token
  
  def index
    render json: Item.all
  end

  def create
    item = Item.create(item_params)
    render json: item
  end

  private
  def item_params
    params.require(:item).permit(:name, :is_completed)
  end
end
