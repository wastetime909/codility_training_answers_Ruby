def solution(a)
  # write your code in Ruby 2.2
  min_price = a.first 
  max_profit = 0
  a.each do |i|
    if min_price > i
      min_price = i 
    end 
    profit = i - min_price 
    if profit > max_profit 
      max_profit = profit 
    end
  end
  max_profit
end