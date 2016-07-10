class BookingsController < ApplicationController
  def new
    @flight = params[:flight]
    @passengers = params[:passengers]
  end
  
  def create
  end
end
