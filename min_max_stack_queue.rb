require_relative 'min_max_stack'

class MinMaxStackQueue
   def initialize 
    @in_stack = MinMaxStack.new
    @out_stack = MinMaxStack.new
  end 

  def max 
    if @in_stack.empty? 
      return @out_stack.max
    elsif @out_stack.empty? 
      return @in_stack.max
    else 
    [@in_stack.max, @out_stack.max].max
    end 
  end 

  def min 
    if @in_stack.empty? 
      return @out_stack.min
    elsif @out_stack.empty? 
      return @in_stack.min
    else 
    [@in_stack.min, @out_stack.min].min
    end 
  end 

  def empty?
    @in_stack.empty? && @out_stack.empty? 
  end 

  def size 
    @in_stack.size && @out_stack.size
  end 

  def enqueue(val)
    @in_stack.push(val)
  end 

  def dequeue 
    queify if @out_stack.empty?

    @out_stack.pop
  end 

  private
  def queify
    until @in_stack.empty? 
      @out_stack.push(@in_stack.pop)
    end 
  end 
end 