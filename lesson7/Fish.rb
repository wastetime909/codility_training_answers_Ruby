def solution(a, b)
  # write your code in Ruby 2.2
  # only need to care about the fish going downstream
  downstream_fish = []
  counter = 0
  a.each_with_index do |size, pos|
    direction = b[pos]
    if direction == 0 
      # check if there's any downstream fish 
      if downstream_fish.any? 
        bigger_fish = downstream_fish.find{|x| x > size}
        if bigger_fish 
          fish_before = downstream_fish.index(bigger_fish)
          counter -= fish_before 
          downstream_fish.shift(fish_before)
        else
          fish_before = downstream_fish.size 
          downstream_fish = []
          counter = counter - fish_before + 1
        end
      else 
        counter += 1
      end
    else
      downstream_fish.unshift(size)
      counter += 1
    end
  end
  counter
end