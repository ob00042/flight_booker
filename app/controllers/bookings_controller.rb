class BookingsController < ApplicationController
  def new
  	@booking = Booking.new(flight_id: params[:flight_id])
  	@passenger_number = params[:num_passengers]
  	@passenger_number.to_i.times{ @booking.passengers.build }
  end

  def create
  	@booking = Booking.new(flight_id: booking_params[:id])
  	@passenger = Passenger.new(name: params[:booking][:passengers][:name], email: params[:booking][:passengers][:email])
  	if @booking.save && @passenger.save
      PassengerMailer.thank_you_email(@passenger, @booking, Flight.find(@booking.flight_id)).deliver_now
  		flash = "Booking completed"
  		redirect_to root_url
  	else
  		flash = "Booking failed!"
  		render 'new'
  	end
  end

  private

  	def booking_params
  		params.require(:booking).permit(:id, passengers_attributes: [:name, :email])
  	end


end
