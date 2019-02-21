class GardensController < ApplicationController
  def index
    if params[:product].present? && params[:city].present?
      sql_query = "product ILIKE :product AND address ILIKE :city"
      @gardens = policy_scope(Garden).where(sql_query, city: "%#{params[:city]}%", product: "%#{params[:product]}%")
    elsif params[:product].present?
      sql_query = "product ILIKE :product"
      @gardens = policy_scope(Garden).where(sql_query, product: "%#{params[:product]}%")
    elsif params[:city].present?
      sql_query = "address ILIKE :city"
      @gardens = policy_scope(Garden).where(sql_query, city: "%#{params[:city]}%")
    else
      @gardens = policy_scope(Garden).order(created_at: :desc)
    end

    @map_gardens = @gardens.where.not(latitude: nil, longitude: nil)
      @markers = @map_gardens.map do |garden|
      {
        lng: garden.longitude,
        lat: garden.latitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { garden: garden }),
        image_url: helpers.asset_url('rog.png')
      }
    end
  end

  def my_gardens
    @my_gardens = Garden.where(user_id: current_user.id)
  end

  def show
    @garden = Garden.find(params[:id])
    @booking = Booking.new
    authorize @garden
  end

  def new
    @garden = Garden.new
    authorize @garden
  end

  def create
    @garden = Garden.new(garden_params)
    @garden.user = current_user
    authorize @garden
      if @garden.save
        redirect_to garden_path(@garden.id)
      else
        render :new
      end
  end

  def destroy
    @garden = Garden.find(params[:id])
    authorize @garden
    @garden.delete
    redirect_to gardens_path
  end

  def edit
    @garden = Garden.find(params[:id])
  end

  def update
    @garden = Garden.find(params[:id])
    @garden.update(garden_params)
    redirect_to garden_path(@garden)
  end


    private

  def garden_params
    params.require(:garden).permit(:title, :address, :description, :surface, :price, :product, :photo)
  end
end
