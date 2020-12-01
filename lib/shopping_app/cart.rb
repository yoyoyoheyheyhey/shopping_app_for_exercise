require_relative "item_manager"
require_relative "ownable"

class Cart
  include ItemManager
  include Ownable

# !!!!!!!!!!!!!!!!!!!self.owner = ownerでどのようなことが行われているかわかりませんでした(Ownableの役割の解説がほしい)!!!!!!!!!!!!!!
# カートのアイテムを管理する配列が空の状態で作成されます。
  def initialize(owner)
    self.owner = owner
    @items = []
  end

  def items
    @items
  end

  def add(item)
    @items << item
  end

  def total_amount
    @items.sum(&:price)
  end

  def check_out
    self.items.each do |item|
      item.owner.wallet.deposit(item.price)
    end
    self.items = []
  end

end
