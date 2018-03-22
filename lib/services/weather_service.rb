require 'httparty'
require 'json'

class WeatherService
  include HTTParty

  base_uri 'http://api.openweathermap.org/data/2.5'

  def weather_response(city_name)
    @weatherapi = JSON.parse(self.class.get("/weather?q=#{city_name}&appid=5304ef4e7e25c61248f8f0ad8efb2078").body)
  end
  def name_london
    @weatherapi["name"]
  end
  def weather_array
    @weatherapi["weather"]
  end
  def weather_main
    @weatherapi["weather"][0]["main"]
  end
  def main_temp
    @weatherapi["main"]["temp"]
  end
  def wind_speed
    @weatherapi["wind"]["speed"]
  end
  def sys_hash
    @weatherapi["sys"]
  end
  def sys_country
    @weatherapi["sys"]["country"]
  end

end
