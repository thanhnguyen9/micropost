class PostsController < ApplicationController
  def new
    user = User.find(params[:user_id])
    @post = user.posts.new
  end

  def create

    @post = Post.new(post_params)
    if @post.save
      redirect_to private_path
    else
      render :new
    end
  end

  def show

    @post = Post.find(params[:user_id])

  end

  private

  def post_params
    params.require(:post).permit(:user_id, :tweet)
  end
end
