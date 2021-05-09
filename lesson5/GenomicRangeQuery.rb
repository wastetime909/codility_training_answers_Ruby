def solution(s, p, q)
  # write your code in Ruby 2.2
  test = s.split("")
  result = []
  p.each_with_index do |i,k|
    size = q[k] - i + 1
    sample = s[i,size]
    if sample.include? "A"
      result.push(1)
    elsif sample.include? "C"
      result.push(2)
    elsif sample.include? "G"
      result.push(3)
    elsif sample.include? "T"
      result.push(4)
    end
  end
  return result
end