def windowed_max_range(arr, win)
  return "can't do it!" if arr.empty? || win == 0 

    current_max_range = nil 
    (0..arr.length - win).each do |i| 
      range = arr[i...i + win]
      max = range.max 
      min = range.min   
      dif = max - min 

      if current_max_range == nil || dif > current_max_range
        current_max_range = dif 
      end 
    end 

    current_max_range
end 

# p windowed_max_range([1, 0, 2, 5, 4, 8], 2) #== 4 # 4, 8
# p windowed_max_range([1, 0, 2, 5, 4, 8], 3) #== 5 # 0, 2, 5
# p windowed_max_range([1, 0, 2, 5, 4, 8], 4) #== 6 # 2, 5, 4, 8
 p windowed_max_range([1, 3, 2, 5, 4, 8], 5) == 6 # 3, 2, 5, 4, 8