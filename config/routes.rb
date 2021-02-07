Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #Addition
  #=========
  get("/add", { :controller=> "asmd", :action => "addition"})
  get("/subtract", { :controller=> "asmd", :action => "subtract"})
  get("/multiply", { :controller=> "asmd", :action => "multiply"})
  get("/divide", { :controller=> "asmd", :action => "divide"})
  get("/add_together", { :controller=> "asmd", :action => "add_together"})
  get("/subtract_together", { :controller=> "asmd", :action => "subtract_together"})
  get("/multiply_together", { :controller=> "asmd", :action => "multiply_together"})
  get("/divide_together", { :controller=> "asmd", :action => "divide_together"})

end
