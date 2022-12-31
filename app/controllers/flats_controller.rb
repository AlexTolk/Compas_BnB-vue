class FlatsController < ApplicationController
  before_action :set_flats, only: [:show, :edit, :update, :destroy]

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
end
