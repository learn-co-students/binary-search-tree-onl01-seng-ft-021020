class BST
  attr_accessor :value, :left, :right
  def initialize(value)
    @value = value
    @left = nil
    @right = nil
  end

  def data
    @value
  end

  def insert(new_key)
    if new_key > value
      @right.nil? ? @right = BST.new(new_key) : @right.insert(new_key)
    else
      @left.nil? ? @left = BST.new(new_key) : @left.insert(new_key)
    end
  end

  # No idea what is happening here.

  def each(&block)
    left&.each(&block)
    block.call(data)
    right&.each(&block)
  end
end
