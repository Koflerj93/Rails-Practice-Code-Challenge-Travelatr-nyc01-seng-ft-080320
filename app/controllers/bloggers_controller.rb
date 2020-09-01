class BloggersController < ApplicationController
  before_action :new_blogger, only: [:new, :create]
  before_action :find_blogger, only: [:edit, :update, :show, :destroy]
  
  def new
    if flash[:params]
      @blogger.update(flash[:params])
    end
  end

  def create
    @blogger.update(blogger_params)
    if @blogger.valid?
      redirect_to blogger_path(@blogger)
    else 
      flash[:errors] = @blogger.errors.full_messages
      flash[:params] = blogger_params
      redirect_to new_blogger_path
    end

  end

  def update
    @blogger.update(blogger_params)
      
    if @blogger.valid?
      redirect_to blogger_path(@blogger)
    else 
      flash[:errors] = @blogger.errors.full_messages
      flash[:params] = blogger_params
      redirect_to edit_blogger_path(@blogger)
    end

  end
  
  def edit
  end
  
  def show
    #@blogger = Blogger.find(params[:id])
  end

  def index
  end

  private 
  
  def blogger_params
    params.require(:blogger).permit(:name, :bio, :age)
  end

  def new_blogger
    @blogger = Blogger.new
  end

  def find_blogger
    @blogger = Blogger.find(params[:id])
  end
end
