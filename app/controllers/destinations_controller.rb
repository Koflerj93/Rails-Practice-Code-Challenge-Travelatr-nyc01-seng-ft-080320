class DestinationsController < ApplicationController
  before_action :find_destination, only: [:show, :edit, :update]
  before_action :new_destination, only: [:new, :edit]
  
  def show
  end

  def index
  end

  def edit
  end

  private

  def find_destination
    @destination = Destination.find(params[:id])
  end

  def new_destination
    @destination = Destination.new
  end

end
