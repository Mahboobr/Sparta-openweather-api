require 'spec_helper'

describe WeatherAPI do

  before(:all) do
      @response = WeatherAPI.new.weather_service
      # @response = @weatherapi.weather_service.weather_response("London")
      @response.weather_response("London")
    end

    it "name should be London" do
      expect(@response.name_london).to eq("London")
    end
    it "should be an Array" do
      expect(@response.weather_array).to be_an(Array)
    end
    it "main should be clouds" do
      expect(@response.weather_main).to eq("Clouds")
    end
    it "temp should be higher than 0" do
      expect(@response.main_temp).to be >(0)
    end
    it "wind should be higher or equal than 0" do
      expect(@response.wind_speed).to be >=(0)
    end
    it "wind should be a float" do
      expect(@response.wind_speed).to be_a(Float)
    end
    it "should be a Hash" do
      expect(@response.sys_hash).to be_a(Hash)
    end
    it "country should be a String" do
      expect(@response.sys_country).to be_a(String)
    end
    it "country should be one of these in this array" do
      expect(["GB","JP"]).to include(@response.sys_country)
    end

end
