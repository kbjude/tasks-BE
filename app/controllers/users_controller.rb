class UsersController < ApplicationController
    def index
        @users = User.all
        json_response(@users)
    end

    def create
        @user = User.create!(user_params)
        json_response(@users, :created)
    end

    def show
        json_response(@user)
    end

    def update
        @user.update(user_params)
        head :no_content
    end

    def destroy
        @user.destroy
        head :no_content
    end

    private

    def user_params
      # whitelist params
      params.permit(:name)
    end
  
    def set_user
      @user = User.find(params[:id])
    end
end
