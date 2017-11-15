# maishoku_app  
（maishokuサイトの動作を参考にしてモデル作成の練習）  

* Ruby version 2.4.1  
* Rails version 5.1.4  
* DB postgresql  

## モデル  

* area 配達地域  
  * prefecture 都道府県  
  * city 都市  
  * house_number 番地  
  * 関係「配達地域（多）：店（多）」  

* genre ジャンル  
  * name ジャンル名  
  * description 説明  
  * 関係「ジャンル（多）：料理（多）」  

* shop 店  
  * name 店名  
  * description 説明  
  * 関係「店（1）：料理（多）」  
  * 関係「店（1）：注文（多）」  
  * 関係「店（多）：料理の種類（多）」  
  * 関係「店（多）：配達地域（多）」  

* kind 料理の種類  
  * name 名前  
  * 関係「料理の種類（多）：料理（多）」  
  * 関係「料理の種類（多）：店（多）」  

* dish 料理  
  * name 料理名  
  * content 内容  
  * price 値段  
  * 関係「料理（多）：ジャンル（多）」  
  * 関係「料理（多）：料理の種類（多）」  
  * 関係「料理（1）：注文詳細（多）」  

* user ユーザ  
  * name 名前  
  * email メール  
  * phone_number 電話番号  
  * 関係「ユーザ（1）:注文（多）」  

* order 注文  
  * order_date 注文日時  
  * delivery_date 配達日時  
  * delivery_address お届け先  
  * 関係「注文（1）：注文詳細（多）」  

* order_detail 注文詳細  
  * quantity 個数  

* areas_group 配達地域と店の中間テーブル(has_many_through)  
  * area_id  
  * shop_id  

* genres_group ジャンルと料理の中間テーブル(has_many_through)  
  * genre_id  
  * dish_id  

* kinds_group 料理の種類と店の中間テーブル(has_many_through)  
  * kind_id  
  * shop_id  

* dishes_group 料理の種類と料理の中間テーブル(has_many_through)  
  * dish_id  
  * kind_id  

## 実行例  
最初にrails db:seedでシードデータを作ってください。  

コンソールからコマンドで実行します。  
ユーザid:1（市川一郎）が一番最近注文した料理名と注文数を見る場合の例  

```
user = User.find(1)
order = user.orders.last
details = order.order_details
details.each do |detail|
  puts "料理名は#{detail.dish.name}です。"
  puts "注文数は#{detail.quantity}です。"
end
```
