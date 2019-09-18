defmodule App.Weather do

  def get_appid() do 
    "14990510a6f2d8faa8daf3015e1d9932"
  end

  def get_endpoint(location) do
    location = URI.encode(location)
    "http://api.openweathermap.org/data/2.5/weather?q=#{location}&appid=#{get_appid()}"
  end
  
end