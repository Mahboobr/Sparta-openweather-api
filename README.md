# Sparta-openweather-api

## Aim

The aim of this task was to get data from an external API, parse the data and run various tests on it.

## How to install
Run the command git clone with this ```git@github.com:Mahboobr/Sparta-openweather-api.git```

Open files and in the command line install ruby gems JSON, HTTParty and RSpec.

```gem install json```

```gem install httparty```

```gem install rspec```



##### Running the software

Open the program and navigate to the weather_spec.rb file.

```/Sparta-openweather-api/spec/weather_spec.rb```


Within this file, on line 7, input the city you would like to get data for:

`@response.weather_response("input city here")`

To see the data returned in the console run
`ruby lib/weather.rb`
