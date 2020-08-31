class BloggersController < ApplicationController
  before_action :new_blogger, only: [:new, :create]
  before_action :find_blogger, only: [:edit, :update, :show, :destroy]
  
  def new

  end

  def create
  
  end
  
  def edit
  end
  
  def show
    #@blogger = Blogger.find(params[:id])
  end

  def index
  end

  def edit
  end
  
  def update
  end

  private 

  def new_blogger
    @blogger = Blogger.new
  end

  def find_blogger
    @blogger = Blogger.find(params[:id])
  end
end
