require "kosi"
require_relative "item"

module ItemManager
# !!!!!!!!!!!!!!itemsメソッドで何が行われているのか、解説を入れる必要がありそうです!!!!!!!!!!!!
  def items
    Item.all.select{|item| item.owner == self }
  end

# !!!!!!!!!!!!!!pick_itemsメソッドで何が行われているのか、解説を入れる必要がありそうです!!!!!!!!!!!!
  def pick_items(number, quantity)
    items = stock.find{|stock| stock[:number] == number }&.dig(:items)
    return if items.nil? || items.size < quantity
    items.slice(0, quantity)
  end

# !!!!!!!!!!!!!!items_listメソッドで何が行われているのか、解説を入れる必要がありそうです!!!!!!!!!!!!
  def items_list
    kosi = Kosi::Table.new({header: %w{番号 商品名 金額 数量}})
    print kosi.render(
      stock.map do |stock|
        [
          stock[:number],
          stock[:label][:name],
          stock[:label][:price],
          stock[:items].size
        ]
      end
    )
  end

  private

# !!!!!!!!!!!!!!stockメソッドで何が行われているのか、解説を入れる必要がありそうです!!!!!!!!!!!!
  def stock
    items
      .group_by{|item| item.label }
      .map.with_index do |label_and_items, index|
        {
          number: index,
          label: {
            name: label_and_items[0][:name],
            price: label_and_items[0][:price],
          },
          items: label_and_items[1],
        }
      end
  end

end
