class ApplicationController < ActionController::Base
#pages
#======
  def the_user_input_address
  render({:template => "/coords_templates/input_address.html.erb"})
  end

  def translate_input
  render({:template => "/translate_templates/translate_input.html.erb"})
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

  def translate_result
    require "google/cloud/translate"
    translate_credentials = ENV.fetch("TRANSLATE_CREDENTIALS")
    translate_project = ENV.fetch("TRANSLATE_PROJECT")
    
    gt_client = Google::Cloud::Translate.new(translate_credentials, translate_project)
    @user_input_to_translate = params.fetch("user_input_to_translate")
    @translation = gt_client.translate(@user_input_to_translate, { :to => "af" })
    
    render({:template => "/translate_templates/translate_results.html.erb"})
  end

end
