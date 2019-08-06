require_relative "my_stack"

class StackQueue 
  def initialize 
    @in_stack = Stack.new 
    @out_stack = Stack.new
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

  def queify
    until @in_stack.empty? 
      @out_stack.push(@in_stack.pop)
    end 
  end 

end 