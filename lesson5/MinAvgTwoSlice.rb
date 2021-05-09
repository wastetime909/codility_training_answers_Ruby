def solution(a)
  # write your code in Ruby 2.2
  a2 = a.each_cons(2).to_a 
  a2 = a2.map{|x| x.inject(:+)/2.0}
  min_a2 = a2.min 
  min_pos2 = a2.index(min_a2)



  a3 = a.each_cons(3).to_a 
  a3 = a3.map{|x| x.inject(:+)/3.0}
  min_a3 = a3.min 
  min_pos3 = a3.index(min_a3)
  
  if !min_a3.nil?
    if min_a3 < min_a2 
      return min_pos3
    else 
      return min_pos2
    end
  else 
    return min_pos2
  end

end