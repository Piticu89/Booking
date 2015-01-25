class BookingsController < ApplicationController
  def show
    @bookings = Booking.all
  end
  def new
    @booking = Booking.new
  end
  def create
    @day = Day.find_by(params[:id])
    @booking = @day.bookings.build(booking_params)
    respond_to do |format|
      if @booking.save
        format.html { redirect_to @day, notice: 'You have succefully booked the room.' }
        format.json { render :show, status: :created, location: @day }
      else
        format.html { redirect_to @day, notice: 'Time interval overlap' }
        format.json { render json: @day.errors, status: :unprocessable_entity }
      end
    end
    #@booking.save
    #  flash[:success] = "Book created!"
    #  redirect_to root_url
  end

  def destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:start, :end, :comentariu)
  end
end
