Rails.application.routes.draw do
  get("/flexible/square/:the_num", {:controller => "calc" ,:action => "flex_square"})
  get("/flexible/square_root/:the_num", {:controller => "calc" ,:action => "flex_square_root"})
  get("/flexible/payment/:apr/:duration/:principal", {:controller => "calc" ,:action => "flex_payment"})
  get("/flexible/random/:small/:large", {:controller => "calc" ,:action => "flex_random"})
  
  get("/square/results", {:controller => "calc", :action => "square_form_results"})
  get("/square/new", {:controller => "calc", :action => "blank_square_form"})
end
