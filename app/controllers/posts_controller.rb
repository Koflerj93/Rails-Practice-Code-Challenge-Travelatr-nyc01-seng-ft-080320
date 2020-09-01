class PostsController < ApplicationController
  before_action :find_post, only: [:edit,:destroy, :update, :show]
  before_action :new_post, only: [:new, :create]
  def show
    
  end

  def new
  end

  def update
    @post.update(post_params)
    redirect_to post_path(@post)
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


  def post_params
    params.require(:post).permit(:title, :content, :likes, :blogger, :destination, :likes)
  end

  
end
