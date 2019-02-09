class CalcController < ApplicationController
  def flex_square
    #"the_num" => "42"
    
    @num = params.fetch("the_num")
    render("calc_templates/flexible_square.html.erb")
  end
  def flex_square_root
    @num = params.fetch("the_num").to_f
    @root = @num ** (0.5)
    render("calc_templates/flexible_square_root.html.erb")
  end
  def flex_payment
    @apr = params.fetch("apr").to_f / 120000
    @duration = params.fetch("duration").to_i
    @principal = params.fetch("principal").to_i
    @payment = (@apr*@principal)/(1-((1+@apr)**(-12*@duration)))
    render("calc_templates/flexible_payment.html.erb")
  end
  def flex_random
    @small = params.fetch("small")
    @large = params.fetch("large")
    @num =  rand(@small.to_i..@large.to_i) #@small.to_f + rand(@large.to_f)
    render("calc_templates/flexible_random.html.erb")
  end
  
  def square_form_results
    @input_number = params.fetch("user_number").to_i
    @output_number = @input_number ** 2
    render("calc_templates/square_results.html.erb")
  end
  def blank_square_form
    render("calc_templates/blank_square_form.html.erb")
  end
end