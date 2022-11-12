class Item
  def name
    @name
  end
  def name=(text)
    @name = text
  end
end

class Food < Item
end

test = Food.new
a = test.name=("チーズケーキ") 

puts a