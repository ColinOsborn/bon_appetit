class Pantry
  attr_reader :stock

  def initialize
    @stock = {}
  end

  def stock_check(item)
    stock[item]
  end

  def restock(item, quantity)
    if stock[item]
      stock[item] += quantity
    else
    stock[item] = quantity
    end
  end

  def use(item, quantity)
    if stock[item] == nil
      "You don't have #{item}!"
  elsif stock[item] < quantity
      "You don't have enough #{item}."
    else
      stock[item] -= quantity
    end
  end
end
