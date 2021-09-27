class Api::SessionsController < ApplicationController
  def create
    @user = User.find_by_credentials(params[:user][:username], params[:user][:password])
    if @user.nil?
      render json: ['Invalid username or password'], status: 401
    else
      login!(@user)
      render 'api/users/show'
    end
  end

  def destroy
    if current_user.nil?
      render json: { message: 'You need to be logged in to do that.' }, status: 404
    else
      logout!
      render json: {}
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end
end
