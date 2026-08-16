#!/usr/bin/env ruby
# Sort integer arguments in ascending order

result = []

ARGV.each do |arg|
  next unless arg =~ /^-?[0-9]+$/

  i_arg = arg.to_i

  i = 0
  i += 1 while i < result.size && result[i] < i_arg

  result.insert(i, i_arg)
end

puts result
