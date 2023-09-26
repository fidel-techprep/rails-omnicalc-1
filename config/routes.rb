Rails.application.routes.draw do

  get("/", { :controller => "calc", :action => "square"})

  get("/square/new", { :controller => "calc", :action => "square"})

  get("/square_root/new", { :controller => "calc", :action => "square_root"})

  get("/payment/new", { :controller => "calc", :action => "payment"})

  get("/random/new", { :controller => "calc", :action => "random"})
  
  

  get("/square/results", { :controller => "results", :action => "square"})

  get("/square_root/results", { :controller => "results", :action => "square_root"})

  get("/payment/results", { :controller => "results", :action => "payment"})

  get("/random/results", { :controller => "results", :action => "random"})

end
