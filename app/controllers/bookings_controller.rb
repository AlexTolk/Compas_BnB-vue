class BookingsController < ApplicationController
  before_action :set_booking, only: [:edit, :update, :show, :destroy]
  before_action :set_flat
  protect_from_forgery with: :null_session

  def new
    @booking = Booking.new
  end

  def show; end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to bookings_show_path(@booking)
    else
      render :new, status: 422
    end
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_flat
    @flat = Flat.find(params[:flat_id])
  end
end
