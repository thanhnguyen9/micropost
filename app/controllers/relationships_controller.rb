class RelationshipsController < ApplicationController

  before_action do
    @current_user = User.find(session[:user_id]) if session[:signed_in]
  end

    def create
        @relationship = Relationship.new(user_id: @current_user.id, friend_id: params[:friend_id])

      if @relationship.save
          redirect_to relationship_path(@relationship)
      else
          flash[:error] = "Couldn't Follow"
          redirect_to root_url
      end
    end

    def show
      @relationships = Relationship.find(params[:id])
      redirect_to private_path
    end
    def destroy
      @relationship = Relationship.find(params[:id])
      @relationship.delete
      redirect_to private_path, notice: "Unfollow successful"
    end
end
