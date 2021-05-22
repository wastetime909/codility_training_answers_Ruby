def solution(h)
  # write your code in Ruby 2.2
  stack = []
  blocks = 0
  stack_height = 0

  h.each do |height|
    next if height == stack_height
    while stack_height > height
      stack_height -= stack.pop
    end
    if stack_height < height
      blocks += 1
      stack << height - stack_height
      stack_height += stack.last
    end
  end
  blocks
end