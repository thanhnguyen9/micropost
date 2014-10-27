class RelationshipsController < ApplicationController

  before_action do
    @current_user = User.find(session[:user_id]) if session[:signed_in]
  end

    def create
        @relationship = Relationship.new(follower_id: @current_user.id, followed_id: params[:followed_id])

      if @relationship.save
          redirect_to User.find params[:followed_id]
      else
          flash[:error] = "Couldn't Follow"
          redirect_to root_url
      end
    end

    def destroy
      @relationship = Relationship.find(params[:id])
      @relationship.delete
      redirect_to private_path, notice: "Unfollow successful"
    end
end
