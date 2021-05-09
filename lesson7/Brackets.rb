def solution(s)
  # write your code in Ruby 2.2
  length = s.length
  if length % 2 == 0
    pair = {}
    pair['{'] = '}'
    pair['['] = ']'
    pair['('] = ')'
    compare = []
    s.each_char do |i|
      if pair.keys.include? i 
        compare.push(i)
      else 
        key = pair.key(i)
        if compare.last == key 
          compare.pop
        else 
          return 0
        end
      end
    end
    if compare.length > 0 
      return 0
    end
    1
  else 
    return 0
  end
end
