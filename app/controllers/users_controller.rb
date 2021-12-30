class UsersController < ApplicationController
  def show
    user ||= session[:user_id] &&
      User.find_by(id: session[:user_id])
    render json: user
  end
end