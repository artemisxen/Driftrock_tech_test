#!/usr/bin/env ruby

require_relative 'calculator'

calculator = Calculator.new

case ARGV[0]
  when 'total_spend'
    p calculator.total_spend(ARGV[1])
  when 'average_spend'
    p calculator.average_spend(ARGV[1])
  when 'most_loyal'
    p calculator.most_loyal
  when 'highest_value'
    p calculator.highest_value
  when 'most_sold'
    p calculator.most_sold
  else
    p 'Please provide command name'
end
