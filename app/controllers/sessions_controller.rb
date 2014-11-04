class SessionsController < ApplicationController

  def index
    
  end
  def new
  end

  def create
    user = User.find_by username: params[:username]
    if user != nil && user.password == params[:password]
      session[:user_id] = user.id
      session[:signed_in] = true

      redirect_to session[:return_to], notice: "You Signed in"
    else
      render :new, notice: "Sign in fail"
    end
  end

   def sign_out
    session[:signed_in] = false
    session.delete(:user_id)
    redirect_to root_path
  end


end
