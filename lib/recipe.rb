class Recipe
  attr_reader :name
  def initialize(name)
    @name = name
    @ingredients = {}
  end

  def ingredients
    @ingredients.keys
  end

  def add_ingredient(ingredient_name, amount)
    @ingredients[ingredient_name] = amount
  end

  def amount_required(ingredient_name)
    @ingredients[ingredient_name]
  end
end


# Romans numerals and Raindrops
r = Recipe.new("Cheese Pizza")
puts r.name

puts r.add_ingredient("Flour", 500)
puts r.ingredients.length
# hash.each_key { |value| block }


formula = { "Vettel" => "Ferrari", "Raikkonen" => "Ferrari" }
puts formula


formula.each do |key, value|
    puts value, formula[key]
end

athletes = {
  "Fredrik Kessiakoff" => "Sweden",
  "Sebastian Vettel" => "Germany",
  "Kimi Raikkonen" => "Finland",
  "Nino Schurter" => "Switzerland",
  "Colin Osborn" => "Sweden"
}

puts athletes
puts athletes["Colin Osborn"]
puts athletes["Sebastian Vettel"]

new_athletes = Hash.new("Kessiakoff")
puts new_athletes

athletes.each do |key, value|
  puts value, athletes[key]
end

athletes.each do |key, value|
  puts key, athletes
end

wins = {
  "Sebastian Vettel" => 41,
  "Lewis Hamilton" => 41,
  "Kimi Raikkonen" => 19,
  "Fernando Alonso" => 25
}

legends = wins.select { |racer, vicotries| vicotries > 26 }
puts legends
