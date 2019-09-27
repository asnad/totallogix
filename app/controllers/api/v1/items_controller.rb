class Api::V1::ItemsController < ApplicationController
  skip_before_action :verify_authenticity_token
  
  def index
    render json: Item.all
  end

  def create
    item = Item.create(item_params)
    render json: item
  end

  def destroy
    item = Item.find_by_id params[:id]
    if item
      item.destroy
      render json: {status: "success", message: "Item deleted successfuly!"}
    else
      render json: {status: "fail", message: "Item did not found"}
    end
  end
  private
  def item_params
    params.require(:item).permit(:name, :is_completed)
  end
end
