def calculation(a, b, operation)
  operation.call(a, b)
end

puts format("5 + 6 = %i", calculation(5, 6, lambda { |a, b| a + b }) )# addition
puts format("5 - 6 = %i", calculation(5, 6, lambda { |a, b| a - b }) )# subtraction