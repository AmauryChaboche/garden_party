class GardensController < ApplicationController
  def index
    @gardens = policy_scope(Garden).order(created_at: :desc)
  end

  def show
  end

  def new
    @garden = Garden.new
  end

  def create
   @garden = Garden.new(garden_params)
   @garden.user = current_user
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
