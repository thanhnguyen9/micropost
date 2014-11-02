class PagesController < ApplicationController

  before_action only: :private do

    if session[:signed_in]
    else
      session[:return_to] = request.url
      redirect_to sign_in_path
    end
  end

  before_action  do
    @current_user = User.find(session[:user_id]) if session[:signed_in]
  end

  def public

    @posts = Post.order("create_at DESC").page(params[:page]).per(10)
    @users = User.all.includes(:posts)
  end

  def private
    @posts = Post.order("create_at DESC").page(params[:page])


  end

  def talk
  end

  def change
  end

  def adventure
  end

  def jokes
  end
end
