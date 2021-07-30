def type(age)
 #先ほどと同じのため省略
end

begin
  age = ARGV.first.to_i
  puts "#{age}歳は{type(age)}です"
rescue => exception
  puts "例外が発生しました: #{e.message}"
ensure
  puts "ご利用ありがとうございます"
end

class Drink
  def name
    @name
  end

  def name=(text)
    @name = text
  end
end

dirnk = Drink.new
drink.name = "カフェラテ"
p drink.name

class Drink
  attr_reader :name
  def name=(text)
    @name
  end
end

drink = Drink.new
drink.name
p drink.name

class Drink
  attr_reader :name
end

drink = Drink.new
p drink.object_id
drink.module
end

#正規表現
p "カフェラテ".match?(/ラテ/)
p "ティーラテ".match?(/ラテ/)
p "モカ".match?(/ラテ/)
