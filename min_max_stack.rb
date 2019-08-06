require_relative 'my_stack'
class MinMaxStack 
  def initialize 
    @stack = Stack.new 
    @maxes = Stack.new 
    @mins = Stack.new 
  end 

  def size 
    @stack.size
  end 

  def empty? 
    @stack.empty? 
  end 

  def max 
    @maxes.peek
  end 

  def min 
    @mins.peek
  end 

  def push(val)
    @stack.push(val)
    push_max(val)
    push_min(val)
  end 

  def pop 
    @mins.pop 
    @maxes.pop 
    @stack.pop
  end 

  def peek 
    @stack.last
  end 

  private 
  def push_max(val)
    cur_max = @maxes.peek
    if cur_max == nil || val > cur_max
      @maxes.push(val) 
    else 
     @maxes.push(cur_max)
    end 
  end 

  def push_min(val)
    cur_min = @mins.peek
    if cur_min == nil || val < cur_min
      @mins.push(val)
    else
      @mins.push(cur_min)
    end 
  end 
end 