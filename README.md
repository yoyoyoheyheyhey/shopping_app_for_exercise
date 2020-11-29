## 実行コマンド
```ruby
ruby lib/shopping_app.rb
```

## 要件
- [ ] Ownableモジュールを適切なクラスにincludeさせて、オーナー権限を持つインスタンスの生成を実現させなさい。

- Cart#check_outを完成させて以下を実現させなせい（価値の移転の実現）。
  - [ ] カートの中身（Cart#items）のすべてのアイテムの購入金額が、カートのオーナーのウォレットからアイテムのオーナーのウォレットに移されること。
  - [ ] カートの中身（Cart#items）のすべてのアイテムのオーナー権限が、カートのオーナーに移されること。
  - [ ] カートの中身（Cart#items）が空になること。

## 出力例
```
🤖 あなたの名前を教えてください
Yohei Goto
🏧 ウォレットにチャージする金額を入力にしてください
1000000
🛍️ ショッピングを開始します
📜 商品リスト
+----+------------------+-----+----+
|番号|商品名            |金額 |数量|
+----+------------------+-----+----+
|0   |CPU               |40830|10  |
|1   |メモリー          |13880|10  |
|2   |マザーボード      |28980|10  |
|3   |電源ユニット      |8980 |10  |
|4   |PCケース          |8727 |10  |
|5   |3.5インチHDD      |10980|10  |
|6   |2.5インチSSD      |13370|10  |
|7   |M.2 SSD           |12980|10  |
|8   |CPUクーラー       |13400|10  |
|9   |グラフィックボード|23800|10  |
+----+------------------+-----+----+
⛏ 商品番号を入力してください
0
⛏ 商品数量を入力してください
5
🛒 カートの中身
+----+------+-----+----+
|番号|商品名|金額 |数量|
+----+------+-----+----+
|0   |CPU   |40830|5   |
+----+------+-----+----+
🤑 合計金額: 204150
😭 買い物を終了しますか？(yes/no)
no
📜 商品リスト
+----+------------------+-----+----+
|番号|商品名            |金額 |数量|
+----+------------------+-----+----+
|0   |CPU               |40830|10  |
|1   |メモリー          |13880|10  |
|2   |マザーボード      |28980|10  |
|3   |電源ユニット      |8980 |10  |
|4   |PCケース          |8727 |10  |
|5   |3.5インチHDD      |10980|10  |
|6   |2.5インチSSD      |13370|10  |
|7   |M.2 SSD           |12980|10  |
|8   |CPUクーラー       |13400|10  |
|9   |グラフィックボード|23800|10  |
+----+------------------+-----+----+
⛏ 商品番号を入力してください
9
⛏ 商品数量を入力してください
4
🛒 カートの中身
+----+------------------+-----+----+
|番号|商品名            |金額 |数量|
+----+------------------+-----+----+
|0   |CPU               |40830|5   |
|1   |グラフィックボード|23800|4   |
+----+------------------+-----+----+
🤑 合計金額: 299350
😭 買い物を終了しますか？(yes/no)
yes
💸 購入を確定しますか？(yes/no)
yes
୨୧┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈結果┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈୨୧
🛍️ ️Yohei Gotoの所有物
+----+------------------+-----+----+
|番号|商品名            |金額 |数量|
+----+------------------+-----+----+
|0   |CPU               |40830|5   |
|1   |グラフィックボード|23800|4   |
+----+------------------+-----+----+
😱👛 Yohei Gotoのウォレット残高: 700650
📦 DICストアの在庫状況
+----+------------------+-----+----+
|番号|商品名            |金額 |数量|
+----+------------------+-----+----+
|0   |CPU               |40830|5   |
|1   |メモリー          |13880|10  |
|2   |マザーボード      |28980|10  |
|3   |電源ユニット      |8980 |10  |
|4   |PCケース          |8727 |10  |
|5   |3.5インチHDD      |10980|10  |
|6   |2.5インチSSD      |13370|10  |
|7   |M.2 SSD           |12980|10  |
|8   |CPUクーラー       |13400|10  |
|9   |グラフィックボード|23800|6   |
+----+------------------+-----+----+
😻👛 DICストアのウォレット残高: 299350
🛒 カートの中身
+----+------+----+----+
|番号|商品名|金額|数量|
+----+------+----+----+
+----+------+----+----+
🌚 合計金額: 0
🎉 終了
```
