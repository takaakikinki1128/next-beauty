# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#アイテム
Item.create(name: 'ストレートアイロン')
Item.create(name: 'コテ32mm')
Item.create(name: 'コテ28mm')
Item.create(name: 'コテ18mm')
Item.create(name: 'コテ16mm')
Item.create(name: 'ヘアゴム')
Item.create(name: 'なし')

#カラー
Color.create(name:'アッシュ系')
Color.create(name:'ブラウン系')
Color.create(name:'レッド系')
Color.create(name:'マット系')
Color.create(name:'バイオレット系')
Color.create(name:'イエロー系')
Color.create(name:'オレンジ系')
Color.create(name:'なし')

#パーマ
Perm.create(name:'ホットパーマ')
Perm.create(name:'コールドパーマ')
Perm.create(name:'なし')

#スタイルジャンル
Stylegenre.create(name:'ボブ')
Stylegenre.create(name:'ショート')
Stylegenre.create(name:'ミディアム')
Stylegenre.create(name:'ロング')
Stylegenre.create(name:'セミロング')
Stylegenre.create(name:'スーパーロング')
Stylegenre.create(name:'ヘアセット')









