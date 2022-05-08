class OrdersController < ApplicationController
  before_action :current_user

  # POST /orders
  def create
    order = @user.orders.create!(order_params)
    if order
      render json: order
    else
      render json: order.errors
    end
  end

  private

  def order_params
    params.permit(:price)
  end

  def current_user
    @user ||= User.find(params[:user_id])

    unless @user
      render json: user.errors
    end
  end
end
