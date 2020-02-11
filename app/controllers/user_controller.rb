class UserController < ApplicationController

  def get_users
    data = User.all
    render json: data, status: :ok
  end
  
  def get_current_user
    data = {
      id: current_user.id,
    }

    render json: data, status: :ok
  end

end