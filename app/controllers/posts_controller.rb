class PostsController < ApplicationController


  before_action  do
    @current_user = User.find(session[:user_id]) if session[:signed_in]
  end

  def new
    user = User.find(params[:user_id])
    @post = user.posts.new
  end

  def create

    @post = Post.new(post_params)
    @post.user_id = @current_user.id

    @post.create_at = DateTime.now
    if @post.save

      redirect_to private_path
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
    @posts = Post.order('create_at DESC')
    @relationship = Relationship.new(follower_id: @current_user.id, followed_id: @user.id) if @current_user
  end

  private

  def post_params
    params.require(:post).permit(:tweet)
  end
end
