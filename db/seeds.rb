#master_data
Area.create(prefecture: "東京都", city: "中央区", house_number: "1-1-1")
Area.create(prefecture: "東京都", city: "中央区", house_number: "1-2-3")
Area.create(prefecture: "東京都", city: "中央区", house_number: "9-9-9")
Area.create(prefecture: "東京都", city: "渋谷区", house_number: "1-1-1")
Area.create(prefecture: "大阪府", city: "中央区", house_number: "1-1-1")
Area.create(prefecture: "大阪府", city: "北区", house_number: "1-1-1")

Genre.create(name: "インド", description: "インド料理をお届けします！")
Genre.create(name: "中華", description: "中華料理をお届けします！")
Genre.create(name: "寿司", description: "寿司をお届けします！")
Genre.create(name: "弁当", description: "弁当をお届けします！")
Genre.create(name: "ヘルシー", description: "ヘルシー料理をお届けします！")

Shop.create(name: "中華百番", description: "中華料理が得意です！")
Shop.create(name: "カレーの帝王", description: "カレーが得意です！")
Shop.create(name: "和食の山奥", description: "和食ならお任せください")
Shop.create(name: "超スピード弁当", description: "どんな弁当でも作ります")
Shop.create(name: "かわうそ寿司", description: "握り一筋30年")

Kind.create(name: "サラダ")
Kind.create(name: "前菜")
Kind.create(name: "一品料理と定食")
Kind.create(name: "選べるお弁当")

Dish.create(name: "インドカレー", content: "本格派のインドカレーです", price: 500)
Dish.create(name: "五目焼き飯", content: "人気の焼き飯です", price: 280)
Dish.create(name: "餃子", content: "人気の餃子です", price: 180)
Dish.create(name: "麻婆豆腐", content: "中華料理の一番人気は麻婆豆腐です", price: 600)
Dish.create(name: "中華丼", content: "みんな大好き中華丼です", price: 380)
Dish.create(name: "寿司セット", content: "人気寿司のセットです", price: 800)
Dish.create(name: "日替わり弁当", content: "日替わりメニューのお弁当です", price: 450)
Dish.create(name: "ヘルシーサラダ", content: "１日分の野菜が採れるサラダです", price: 350)
Dish.create(name: "ヘルシー寿司弁当", content: "ヘルシーな寿司弁当です", price: 800)
Dish.create(name: "豪華寿司弁当", content: "かなり豪華な寿司弁当です", price: 1000)
Dish.create(name: "山奥御前", content: "身体に良い和定食です", price: 1200)

User.create(name: "市川一郎", email: "ichiro@test.com", phone_number: "111-1111")
User.create(name: "仁川二郎", email: "jiro@test.com", phone_number: "222-2222")
User.create(name: "三田三郎", email: "saburo@test.com", phone_number: "333-3333")
User.create(name: "四谷四郎", email: "siro@test.com", phone_number: "444-4444")
User.create(name: "五味五郎", email: "goro@test.com", phone_number: "555-5555")
User.create(name: "六甲六郎", email: "rokuro@test.com", phone_number: "666-6666")

#association
Shop.find(1).areas = Area.find(1, 2, 3)
Shop.find(2).areas = Area.find(1, 2, 3, 4)
Shop.find(3).areas = Area.find(5, 6)
Shop.find(4).areas = Area.find(1, 2, 3, 4, 5, 6)
Shop.find(5).areas << Area.find(4)

Genre.find(1).dishes << Dish.find(1)
Genre.find(2).dishes = Dish.find(2, 3, 4, 5)
Genre.find(3).dishes = Dish.find(6, 9, 10)
Genre.find(4).dishes = Dish.find(7, 9, 10)
Genre.find(5).dishes = Dish.find(8, 9, 11)

Shop.find(1).dishes = Dish.find(2, 3, 4, 5)
Shop.find(2).dishes << Dish.find(1)
Shop.find(3).dishes = Dish.find(8, 11)
Shop.find(4).dishes << Dish.find(7)
Shop.find(5).dishes = Dish.find(6, 9, 10)

Kind.find(1).dishes << Dish.find(8)
Kind.find(2).dishes = Dish.find(3, 8)
Kind.find(3).dishes = Dish.find(1, 2, 4, 5, 6, 7, 9, 10, 11)
Kind.find(4).dishes = Dish.find(7, 9, 10)

Shop.find(1).kinds = Kind.find(2, 3)
Shop.find(2).kinds << Kind.find(3)
Shop.find(3).kinds = Kind.find(1, 3)
Shop.find(4).kinds << Kind.find(4)
Shop.find(5).kinds = Kind.find(3, 4)
