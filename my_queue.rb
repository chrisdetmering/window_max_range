class Queue 
  def initialize(store = [])
    @store = store
  end 

  def size 
    @store.size
  end 

  def pop 
    @store.pop
  end 

  def push(ele)
    @store.push(ele)
  end  

  def empty? 
    @store.empty? 
  end 

  def peek
    @store.last
  end 
end 