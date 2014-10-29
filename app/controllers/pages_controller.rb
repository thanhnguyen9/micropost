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
    @users = User.all
    @posts = Post.order("create_at DESC").page(params[:page]).per(10)

  end

  def private
    @posts = Post.order("create_at DESC").page(params[:page]).per(4)

    @relationships = []
    Relationship.all.each do |relationship|
      if relationship.user_id == @current_user.id
        @relationships << relationship
      end
    end

  end
end
