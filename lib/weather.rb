require_relative "./services/weather_service"


class WeatherAPI
  # include HTTParty
  #
  # base_uri 'http://api.openweathermap.org/data/2.5'
  # base_uri 'http://api.openweathermap.org/data/2.5/weather?q=London,uk&appid=8baef4fc56450ca58eae20c46f2336d2'

  def weather_service
    WeatherService.new
  end


end
# x = WeatherAPI.new
# print x.weather_service.weather_response("London")
