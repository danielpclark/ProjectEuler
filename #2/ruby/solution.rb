#!/bin/ruby

def fib_gen
  Enumerator::Generator.new do |g| 
    f0, f1 = 0, 1
    loop do
      g.yield f0
      f0, f1 = f1, f0 + f1
    end 
  end 
end

gets.strip.to_i.times do
  index = gets.strip.to_i
  puts fib_gen.lazy.select(&:even?).take_while {|v| v < index}.reduce(:+)
end
