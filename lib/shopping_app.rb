require_relative "shopping_app/seller"
require_relative "shopping_app/item"
require_relative "shopping_app/customer"

# 商品の売り手が作成されます。ここでの引数をもとに売り手となるユーザが作成され、そのユーザの財布も同時に作成されます。
seller = Seller.new("DICストア")

# 商品が在庫として10個ずつ作成され、売り手は上で作成したsellerが登録されます。
10.times{ Item.new("CPU", 40830, seller) }
10.times{ Item.new("メモリー", 13880, seller) }
10.times{ Item.new("マザーボード", 28980, seller) }
10.times{ Item.new("電源ユニット", 8980, seller) }
10.times{ Item.new("PCケース", 8727, seller) }
10.times{ Item.new("3.5インチHDD", 10980, seller) }
10.times{ Item.new("2.5インチSSD", 13370, seller) }
10.times{ Item.new("M.2 SSD", 12980, seller) }
10.times{ Item.new("CPUクーラー", 13400, seller) }
10.times{ Item.new("グラフィックボード", 23800, seller) }

# 顧客が作成されます(ここでの引数をもとに顧客となるユーザが作成され、そのユーザの財布とカートも同時に作成されます)。
puts "🤖 あなたの名前を教えてください"
customer = Customer.new(gets.chomp)

puts "🏧 ウォレットにチャージする金額を入力にしてください"
customer.wallet.deposit(gets.chomp.to_i)

# 商品の種類と個数を選択し、カートに入れる作業が繰り返し行われます(end_shoppingがtrueになるとショッピングが終了します)
puts "🛍️ ショッピングを開始します"
end_shopping = false
while !end_shopping do
  puts "📜 商品リスト"
  seller.items_list

  puts "️️⛏ 商品番号を入力してください"
  number = gets.to_i

  puts "⛏ 商品数量を入力してください"
  quantity = gets.to_i

# pick_itemsメソッドはItemManagerに定義されています(SellerはUserを継承しており、UserでItemManagerがインクルードされていることで、pick_itemsメソッドを呼び出すことができます)。
  items = seller.pick_items(number, quantity)

  items&.each{|item| customer.cart.add(item) }

# items_listメソッドはItemManagerに定義されています(CartでItemManagerがインクルードされていることで、items_listメソッドを呼び出すことができます)。
  puts "🛒 カートの中身"
  customer.cart.items_list
  puts "🤑 合計金額: #{customer.cart.total_amount}"

  puts "😭 買い物を終了しますか？(yes/no)"
  end_shopping = gets.chomp == "yes"
end

# check_outメソッドで課題要件の処理が行われるように、コードを記述する必要があります。
puts "💸 購入を確定しますか？(yes/no)"
customer.cart.check_out if gets.chomp == "yes"

puts "୨୧┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈結果┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈୨୧"
puts "️🛍️ ️#{customer.name}の所有物"
customer.items_list
puts "😱👛 #{customer.name}のウォレット残高: #{customer.wallet.balance}"

puts "📦 #{seller.name}の在庫状況"
seller.items_list
puts "😻👛 #{seller.name}のウォレット残高: #{seller.wallet.balance}"

puts "🛒 カートの中身"
customer.cart.items_list
puts "🌚 合計金額: #{customer.cart.total_amount}"

puts "🎉 終了"
