def total(prices)
  amount = 0
  prices.each do | price |
    amount += price
  end
  amount
end

def show_discounts(prices)
  prices.each do | price |
    amount_off = price / 3.0
    puts format("Your discount: $%.2f", amount_off)
  end
end

def show_discounts_2(prices, &block)
  block.call(prices)
  # prices.each yield
end

puts total [3.44, 7.88, 19.05]
show_discounts [3.44, 7.88, 19.05]
# show_discounts_2 ([1.5, 2.3, 3.1]) { | price | puts "Price: #{price}" }
show_discounts_2 ([1.5, 2.3, 3.1]) do | prices |
  total = 0
  prices.each {|price| total += price}
  puts total
end
