class BoatsController < ApplicationController
  def index
    @boats = Boat.order(rating: :desc)
  end
  
  def new
  end
  
  def creat
  end
  
  def show
  end

  def update
  end

  def edit
  end


  def destroy
  end
end
