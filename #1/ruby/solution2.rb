#!/bin/ruby

t = gets.strip.to_i
t.times do
  n = gets.strip.to_i - 1
  ttl = 0
  progress = 0
  incrementor = [3,2,1,3,1,2,3].cycle
  while progress < n - incrementor.peek do
    progress += incrementor.next
    ttl += progress
  end
  puts ttl
end
