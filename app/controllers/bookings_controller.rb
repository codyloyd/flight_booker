class BookingsController < ApplicationController
  def new
    @flight = Flight.find(params[:flight])
    @passengers = params[:passengers].to_i
  end
  def create
    params[:passenger_count].to_i.times do |i|
      passenger = Passenger.create(name:params["passenger-#{i}"])
      passenger.bookings.create(flight_id:params[:flight])
    end
    redirect_to Flight.find(params[:flight])
  end
end
