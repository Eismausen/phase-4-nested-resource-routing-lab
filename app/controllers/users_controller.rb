class UsersController < ApplicationController

  def show
    user = User.find(params[:id])
    render json: user, include: :items
  end

  def show_items
    user = User.find(params[:user_id])
    render json: user.items
  end


  def show_item
    user = User.find(params[:user_id])
    item = user.items.find(params[:id])
    render json: item
  end

  def create_item
    user = User.find(params[:user_id])
    item = user.items.create!(item_params)
    render json: item, status: :created
  end

  private

  def item_params
    params.permit(:name, :description, :price)
  end
end
