class GardensController < ApplicationController
  def index
  end

  def show
  end

  def new
    @garden = Garden.new
  end

  def create
   @garden = Garden.new(garden_params)
    if @garden.save
   redirect_to garden_path(@garden.id)
    else
      render :new
    end
  end

  def destroy
  end

  def edit
  end

  def update
  end

    private

  def garden_params
    params.require(:garden).permit(:title, :address, :description, :surface, :price, :product)
  end

end
