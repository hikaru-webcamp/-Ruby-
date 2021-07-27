#インスタンスメソッド
# レシーバがインスタンスであるメソッド
drink.name
[1, 2, 3].size
1.even?

# クラスメソッド

Drink.new
Array.new

class Cafe
  def self.welocome
    "いらっしゃいませ"
  end
  def self.welcome_again
    welocome + "いつもありがとうございます"
  end

end
