Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #Homepage
  #========
  get("/", { :controller=> "asmd", :action => "addition"})

  #Calculations
  #=========
  get("/add", { :controller=> "asmd", :action => "addition"})
  get("/subtract", { :controller=> "asmd", :action => "subtract"})
  get("/multiply", { :controller=> "asmd", :action => "multiply"})
  get("/divide", { :controller=> "asmd", :action => "divide"})
  get("/add_together", { :controller=> "asmd", :action => "add_together"})
  get("/subtract_together", { :controller=> "asmd", :action => "subtract_together"})
  get("/multiply_together", { :controller=> "asmd", :action => "multiply_together"})
  get("/divide_together", { :controller=> "asmd", :action => "divide_together"})
  
  #APIs
  #=====
  get("street_to_coords/new", {:controller =>"application", :action=>"the_user_input_address"})
  get("street_to_coords/results", {:controller =>"application", :action=>"geocoding"})

end
