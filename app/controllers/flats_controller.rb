class FlatsController < ApplicationController
  before_action :set_flats, only: [:show, :edit, :update, :destroy]
  protect_from_forgery with: :null_session


  def index
    @flats = Flat.all

    @search = params["search"].present? ? params[:search][:search] : nil
    if @search.present?
      puts "@search present ? #{@search}"
      @flats = Flat.where("name ILIKE ? OR details ILIKE ?", "%#{@search}%", "%#{@search}%")
    end
  end

  def show; end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.user = current_user
    if @flat.save
      redirect_to flat_path(@flat)
    else
      render :new, status: 422
    end
  end

  def edit; end

  def update
    if @flat.update(flat_params)
      redirect_to flat_path(@flat)
    else
      render :new, status: 422
    end
  end

  def destroy
    @flat.destroy
    redirect_to flats_path, status: :see_other
  end

  private

  def set_flats
    @flat = Flat.find(params[:id])
  end

  def flat_params
    params.require(:flat).permit(:name, :description, :avg_rating, :price, :user_id, :photos, :address, :city, :country, :zipcode, :state, :cancellation, :ground_rules)

  end
end
