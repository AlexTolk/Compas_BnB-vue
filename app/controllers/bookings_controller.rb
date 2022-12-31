class BookingsController < ApplicationController
  before_action :set_booking, only: [:edit, :update, :show, :destroy]
  before_action :set_flat, except: [:show]
  protect_from_forgery with: :null_session
  skip_before_action :verify_authenticity_token

  def new
    @booking = Booking.new
  end

  def show; end

  def create
    @booking = Booking.new
    @booking.user = current_user
    @booking.flat = @flat

    if @booking.save
      redirect_to booking_path(@booking)
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

  # def booking_params

  #   params.require(:booking).permit(:flat_id)
  # end

end
