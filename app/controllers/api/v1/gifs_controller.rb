class Api::V1::GifsController < ApplicationController
  def index
    forecast = ForecastFacade.new(params[:location]).get_forecast
    daily_weather = forecast.daily_weather
    giphy = Gif.new(daily_weather)
    render json: GifSerializer.new(giphy)
  end
end