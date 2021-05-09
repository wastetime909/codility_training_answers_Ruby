def solution(a)
  # write your code in Ruby 2.2
  a = a.sort 
  first_a = a.first 
  second_a = a.first(2).last 
  third_last_a = a.last(3).first
  second_last_a = a.last(2).first 
  last_a = a.last 
  comp1 = first_a * second_a * last_a # in case first two are negative
  comp2 = third_last_a * second_last_a * last_a
  return [comp1, comp2].max
end