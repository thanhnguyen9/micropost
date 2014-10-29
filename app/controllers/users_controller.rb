class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params_user)

    if @user.save
      session[:user_id] = @user.id

      session[:signed_in] = true

      redirect_to session[:return_to], notice: "You Signed in"

    else
      render :new
    end
  end


  private

  def params_user
    params.require(:user).permit(:username, :password, :photo_url)
  end
end
