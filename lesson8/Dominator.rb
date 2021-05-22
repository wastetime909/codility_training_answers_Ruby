def solution(a)
  # write your code in Ruby 2.2
  if a.size > 0
    freq = a.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
    max_combo = freq.max_by{|k,v| v}
    max_val = max_combo[0]
    max_freq = max_combo[1]
    half_a = a.size/2
    if max_freq > half_a 
      return a.index(max_val)
    else 
      return -1
    end
  else 
    return -1
  end
end