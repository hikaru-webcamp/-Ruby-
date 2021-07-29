
# module1.rb
module WhippedCream
end


# module2.rb
module WhippedCream
  def whipped_cream
    @name += "ホイップクリーム"
  end
end


class Drink
  def initialize(name)
    @name = name
  end
  def name
    @name
  end
end

drink = Drink.new("モカ")
drink.whipped_cream
puts drink.name
