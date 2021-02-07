class AsmdController < ApplicationController

  #pages
  #======
  def addition
    render({ :template => "/calculations_templates/addition.html.erb"})
  end

  def subtract
    render({ :template => "/calculations_templates/subtract.html.erb"})
  end

  def multiply
    render({ :template => "/calculations_templates/multiply.html.erb"})
  end

  def divide
    render({ :template => "/calculations_templates/divide.html.erb" })
  end

#actions
#========

def add_together
@first_num = params.fetch("first_num").to_f
@second_num = params.fetch("second_num").to_f
@sum = @first_num + @second_num

render({:template => "/calculations_templates/sum.html.erb"})
end

def subtract_together
@first_num = params.fetch("first_num").to_f
@second_num = params.fetch("second_num").to_f
@result = @second_num - @first_num

render({:template => "/calculations_templates/subtract_result.html.erb"})
end

def multiply_together
@first_num = params.fetch("first_num").to_f
@second_num = params.fetch("second_num").to_f
@product = @first_num * @second_num

render({:template => "/calculations_templates/multiply_result.html.erb"})
end

def divide_together
@first_num = params.fetch("first_num").to_f
@second_num = params.fetch("second_num").to_f
@quotient = @first_num / @second_num

render({:template => "/calculations_templates/division_result.html.erb"})
end



end
