Rails.application.routes.draw do
  get("/flexible/square/:the_num", {:controller => "calc" ,:action => "flex_square"})
  get("/flexible/square_root/:the_num", {:controller => "calc" ,:action => "flex_square_root"})
  get("/flexible/payment/:apr/:duration/:principal", {:controller => "calc" ,:action => "flex_payment"})
  get("/flexible/random/:small/:large", {:controller => "calc" ,:action => "flex_random"})
  
  get("/square/results", {:controller => "calc", :action => "square_form_results"})
  get("/square/new", {:controller => "calc", :action => "blank_square_form"})
  
  get("/square_root/results", {:controller => "calc", :action => "square_root_form_results"})
  get("/square_root/new", {:controller => "calc", :action => "square_root_form"})
  
  get("/payment/results", {:controller => "calc", :action => "payment_form_results"})
  get("/payment/new", {:controller => "calc", :action => "payment_form"})
  
  get("/random/results", {:controller => "calc", :action => "random_results"})
  get("/random/new", {:controller => "calc", :action => "random_form"})
end
