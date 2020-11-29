require_relative "item_manager"

class Cart
  include ItemManager

  def initialize(owner)
    self.owner = owner
    @contents = []
  end

  def items
    @contents
  end

  def add(item)
    @contents << item
  end

  def total_amount
    items.sum(&:price)
  end

  def check_out
  end

end