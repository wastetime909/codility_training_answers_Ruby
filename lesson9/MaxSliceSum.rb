def solution(a)
  # write your code in Ruby 2.2
  max_a = a.max 
  max_holder = 0
  max_slice = -1.0/0
  a.each do |i|
    max_holder = max_holder + i > 0 ? max_holder + i : i
    max_slice = max_holder > max_slice ? max_holder : max_slice 
  end
  [max_a, max_slice].max
end
