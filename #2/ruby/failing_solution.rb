#!/bin/ruby

gets.strip.to_i.times do
  index = gets.strip.to_i
  mem = {}
  fib = lambda{|n|
    if n <= 1
      return n
    else 
      mem[n] ||= fib.(n-1) + fib.(n-2)
    end
  }
  fib.(index)
  puts mem.values.lazy.select(&:even?).take_while {|v| v < index}.reduce(:+)
end

