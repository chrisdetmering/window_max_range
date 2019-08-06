require_relative "min_max_stack_queue"

def windowed_max_range(arr, window)
  my_queue = MinMaxStackQueue.new 
  curr_max_range = nil 

  (0...arr.length).each do |i| 
    if i < window - 1 
      my_queue.enqueue(arr[i])
    elsif i == window - 1 
      my_queue.enqueue(arr[i])
      curr_max_range = my_queue.max - my_queue.min 
    else
      my_queue.enqueue(arr[i])
      my_queue.dequeue
      max_in_range = my_queue.max - my_queue.min 

        if max_in_range > curr_max_range
          curr_max_range = max_in_range
        end 
    end
  end 

  curr_max_range
end 

# windowed_max_range([1, 0, 2, 5, 4, 8], 2) #== 4 # 4, 8
# windowed_max_range([1, 0, 2, 5, 4, 8], 3) == 5 # 0, 2, 5
# windowed_max_range([1, 0, 2, 5, 4, 8], 4) == 6 # 2, 5, 4, 8
 p windowed_max_range([1, 3, 2, 5, 4, 8], 5) == 6 # 3, 2, 5, 4, 8