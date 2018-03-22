require 'httparty'
require 'json'

class WeatherService
  include HTTParty

  base_uri 'http://api.openweathermap.org/data/2.5'

  def weather_response(city_name)
    JSON.parse(self.class.get("/weather?q=#{city_name}&appid=5304ef4e7e25c61248f8f0ad8efb2078").body)
  end

end
