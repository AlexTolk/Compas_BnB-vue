class BookingsController < ApplicationController

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

end
