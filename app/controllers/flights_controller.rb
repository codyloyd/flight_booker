class FlightsController < ApplicationController
  def index
    @flights = Flight.all.order(:start)
    @airports = Airport.all.map { |u| [u.code, u.id] }
    @available_dates = Flight.all.order(:start).map { |u| u.start.strftime('%b %Y')}.uniq

    @search_results = Flight.where(from:params[:from], to:params[:to])
    @search_results_form = @search_results.map { |u| u.start.strftime("%e %b %Y, %l:%M %P")}
    @passengers = params[:passengers]
  end

end
