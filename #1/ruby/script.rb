#!/bin/ruby

t = gets.strip.to_i
t.times do
  n = gets.strip.to_i
  puts (0..n-1).reduce(0) {|ttl,val|
    if ['0','5'].include? val.to_s[-1]
      ttl += val
    elsif val % 3 == 0
      ttl += val
    end
    ttl
  }
end
