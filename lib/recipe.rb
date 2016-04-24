class Recipe
  attr_reader :name
  attr_accessor :description

  def initialize(name, description=nil)
    @name = name
    @description = description
    @ingredients = {}
  end

  def ingredients
    @ingredients.keys
  end

  def add_ingredient(ingredient_name, amount)
    @ingredients[ingredient_name] = amount
  end

  def amount_required(ingredient_name)
    @ingredients.fetch(ingredient_name)
  end
end
