class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

    def index
        @posts = Post.all
        @posts = Post.all.order(created_at: :desc)
        # .page(params[:page]).per(20)
    end

    def new
        @post = Post.new
    end

    def create
        post = Post.new(post_params)
        
        post.user_id = current_user.id

        if post.save
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
    end

    def show
        @post = Post.find(params[:id])
    end

    def edit
        @post = Post.find(params[:id])
    end

      def update
        post = Post.find(params[:id])
        if post.update(post_params)
          redirect_to :action => "show", :id => post.id
        else
          redirect_to :action => "new"
        end
      end

      def destroy
        post = Post.find(params[:id])
        post.destroy
        redirect_to user_path(current_user.id)
      end
    
    private
      def post_params
        params.require(:post).permit(:start, :toilet, :page, :user_id, :address, :store_name, :latitude, :longitude, :city, :end, :parking)
    end
end
