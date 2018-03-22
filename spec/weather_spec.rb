require 'spec_helper'

describe WeatherAPI do

  before(:all) do
      @weatherapi = WeatherAPI.new
      @response = @weatherapi.weather_service.weather_response("London")
    end

    it "name should be London" do
      expect(@response["name"]).to eq("London")
    end
    it "should be an Array" do
      expect(@response["weather"]).to be_an(Array)
    end
    it "main should be clouds" do
      expect(@response["weather"][0]["main"]).to eq("Clouds")
    end
    it "temp should be higher than 0" do
      expect(@response["main"]["temp"]).to be >(0)
    end
    it "wind should be higher or equal than 0" do
      expect(@response["wind"]["speed"]).to be >=(0)
    end
    it "wind should be a float" do
      expect(@response["wind"]["speed"]).to be_a(Float)
    end
    it "should be a Hash" do
      expect(@response["sys"]).to be_a(Hash)
    end
    it "country should be a String" do
      expect(@response["sys"]["country"]).to be_a(String)
    end
    it "country should be one of these in this array" do
      expect(["GB","JP"]).to include(@response["sys"]["country"])
    end

end
