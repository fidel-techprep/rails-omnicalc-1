class ResultsController < ApplicationController
  def square
    @number = params.fetch("number")
    @result = (@number.to_f ** 2).to_f
    render({ :template => "result_templates/square"})
  end

  def square_root
    @number = params.fetch("number")
    @result = Math.sqrt(@number.to_f)
    render({ :template => "result_templates/square_root"})
  end

  def payment
    @apr = params.fetch("apr").to_f / 100
    @years = params.fetch("years").to_i
    @pv = params.fetch("pv").to_f
    @payment_num = (@apr / 12) * @pv
    @payment_den =  1 - ((1 + (@apr / 12)) ** (-1 * (@years * 12)))
    @payment = (@payment_num / @payment_den)
    render({ :template => "result_templates/payment"})
  end

  def random
    @max = params.fetch("max").to_f
    @min = params.fetch("min").to_f
    @number = rand(@min..@max)
    render({ :template => "result_templates/random"})
  end
end
