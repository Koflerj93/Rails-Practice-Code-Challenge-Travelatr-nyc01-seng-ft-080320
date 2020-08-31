class PostsController < ApplicationController
  before_action :find_post, only: [:edit,:destroy]
  before_action :new_post, only: [:new, :create]
  def show
    @post = Post.find(params[:id])    
     if params[:post] == "liked"
      
        updated_likes = @post.likes + 1
        @post.update("likes" => updated_likes)
      end
  end

  def new
  end



  def index
  end

  def edit
  end

  def create
  end

  private
  def find_post
    @post = Post.find(params[:id])
  end

  def new_post
    @post = Post.new
  end

  def like_params
    params.require(:post).permit(:liked)
  end

  def post_params
    params.require(:post).permit(:title, :content, :likes, :blogger, :destination)
  end

  
end
