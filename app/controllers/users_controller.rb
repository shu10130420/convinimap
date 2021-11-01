class UsersController < ApplicationController

    def index
        @user = User.all
    end


    def show
        @user = User.find(params[:id])
        @posts = @user.posts.order(created_at: :desc)
        # .page(params[:page]).per(10)
    end

    def destroy
        @user = User.find(params[:id])
    user.destroy
    redirect_to user_path
    end
    
    private
    def user_params
        params.require(:user).permit(:user_id, :page)
    end
end
