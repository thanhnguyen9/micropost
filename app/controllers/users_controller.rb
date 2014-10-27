class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params_user)

    if @user.save
      session[:user_id] = @user.id
      redirect_to private_path, notice: "Thanks for signing up"
    else
      render :new
    end
  end


  def following?(user)
    self.followeds.include? user
  end

  def follow(user)
      Relationship.create(follower_id: self.id, followed_id: user.id)
  end

  private

  def params_user
    params.require(:user).permit(:username, :password)
  end
end
