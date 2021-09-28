class Api::SessionsController < ApplicationController
  def create
    @user = User.find_by_credentials(params[:user][:email], params[:user][:password])
    if @user.nil?
      render json: ['Invalid email or password'], status: 422
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
    params.require(:user).permit(:email, :password)
  end
end
