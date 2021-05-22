def solution(s)
  # write your code in Ruby 2.2
  result = 1
  if s.size > 0
    placeholder = []
    s.each_char do |i|
      if i == '('
        placeholder.push(')')
      elsif i == ')'
        if placeholder.any? 
          placeholder.pop
        else 
          result = 0
        end
      end
    end
    if placeholder.any?
      result = 0
    end
  end
  return result
end