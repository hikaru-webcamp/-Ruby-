#クラスメソッドの定義
class Cafe
  def self.welcome
    "いらっしゃいませ"
  end
end

puts Cafe.welcome

#同じクラスのクラスメソッドを呼び出す
class Cafe
  def self.welcome
    "いらっしゃいませ"
  end

  def self.welcome_again
   welcome + "いつもありがとうございます"
  end
end
puts Cafe.welcome

puts Cafe.welcome_again

#こういう書き方もできる ただこれだとクラス名いちいち変更しなくてはいけない手間がある
class Cafe
  def Cafe.welcome
    "いらっしゃいませ"
  end

  def Cafe.welcome_again
   welcome + "いつもありがとうございます"
  end
end

puts Cafe.welcome

puts Cafe.welcome_again


# ====継承について====

# class Item
#   def name
#     @name
#   end
#   def name = (text)
#     @name =  text
#   end
# end

# class Drink
#   def name
#     @name
#   end
#   def name (text)
#     @name = text
#   end
#   def size
#     @size
#   end
#   def size = (text)
#     @size = text
#   end
# end

#この記述を継承にする書き方にする
class Item
  def name
    @name
  end
  def name=(text) #←インスタンス変数へ代入するメソッド   カフェオレがはいる
    @name = text
  end
end

class Drink < Item
  def size
    @size
  end
  def size=(text)
    @size = text
  end
end

item = Item.new
item.name = "マフィン"

drink = Drink.new
drink.name = "カフェオレ"
drink.size = "tall"
puts drink.name #インスタンスメソッド
puts "#{drink.name} #{drink.size}サイズ"
puts "#{item.name}"
p drink.instance_variables
