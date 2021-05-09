def solution(a)
  # write your code in Ruby 2.2
  a.combination(3).map(&:sort).select{|s| s[0] + s[1] > s[2] }.length
end
