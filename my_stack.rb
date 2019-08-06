class Stack 
  def initialize(store = [])
    @store = store
  end 

  def size 
    @store.size 
  end 

  def pop 
    @store.pop
  end 

  def push(val)
    @store.push(val)
  end

  def empty? 
    @store.empty? 
  end 

  def peek 
    @store.last
  end 
end 