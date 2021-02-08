class ApplicationController < ActionController::Base
#pages
#======
  def the_user_input_address
  render({:template => "/coords_templates/input_address.html.erb"})
  end

#actions
#=======

  def geocoding
    @the_user_input_address = params.fetch("my_address")
    url = "https://maps.googleapis.com/maps/api/geocode/json?address="+ @the_user_input_address +"&key="+ ENV.fetch("GMAPS_KEY")
    @raw_contents = open(url).read
    @data = JSON.parse(@raw_contents)
    @results = @data.fetch("results")
    @first_result = @results.at(0)
    @geometry = @first_result.fetch("geometry")
    @location = @geometry.fetch("location")
    @latitude = @location.fetch("lat")
    @longitude = @location.fetch("lng")

    render({:template => "/coords_templates/calc_coords.html.erb"})
  end




end
