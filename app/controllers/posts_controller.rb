class PostsController < ApplicationController
  before_action :find_post, only: [:edit,:destroy, :update, :show]
  before_action :new_post, only: [:new, :create]
  def show
    
  end

  def new
    if flash[:errors]
      @post.update(flash[:params])
    end
  end

  def update
    @post.update(post_params)
    redirect_to post_path(@post)
  end

  def index
    @posts = Post.ApplicationController
  end

  def edit
    
  end

  def update
    @post.update(post_params)
    if @post.valid?
      redirect_to post_path(@post)
    else
      flash[:errors] = @post.errors.full_messages
      flash[:params] = post_params
      redirect_to edit_post_path(@post)
    end
  end

  
  def create
    byebug
    @post.update(post_params)
    if @post.valid?
      redirect_to post_path(@post)
    else
      flash[:errors] = @post.errors.full_messages
      flash[:params] = post_params
      redirect_to new_post_path
    end
  end

  private
  def find_post
    @post = Post.find(params[:id])
  end

  def new_post
    @post = Post.new
  end


  def post_params
    params.require(:post).permit(:title, :content, :likes, :blogger_id, :destination_id, :likes)
  end

  
end
