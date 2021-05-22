def solution(a)
  # write your code in Ruby 2.2
  size = 0
  leader_candidate = nil
  equi_leaders = 0
  n = a.size

  a.each do |item|
    if size == 0
      leader_candidate = item
      size += 1
    else
      if leader_candidate != item
        size -= 1
      else
        size += 1
      end
    end
  end

  leader_count = a.select { |v| v == leader_candidate }.size

  left_leaders = 0

  a.each_with_index do |v, i|
    if v == leader_candidate
      leader_count -= 1
      left_leaders += 1
    end
    if left_leaders > (i + 1) / 2 && leader_count > (n - i - 1) / 2
      equi_leaders += 1
    end
  end
  equi_leaders
end