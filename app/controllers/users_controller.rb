class UsersController < ApplicationController
  # GET /users/{id}
  def show
    if user
      render json: user
    else
      render json: user.errors
    end
  end

  # POST /users
  def create
    user = User.create!(user_params)
    if user
      render json: user
    else
      render json: user.errors
    end
  end

  private

  def user_params
    params.permit(:name, :email)
  end

  def user
    @user ||= User.find(params[:id])
  end
end
