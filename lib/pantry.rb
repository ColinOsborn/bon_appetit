class Pantry
  def initialize
    @ingredients = {}
  end

  def add_ingredient(name, amount)
    @ingredients[name] = amount
  end

  def contains_ingredient?(name)
    @ingredients[name]
  end

  def has_enough?(name, amount_required)
     @ingredients[name] >= amount_required
  end
end
