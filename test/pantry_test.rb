require './lib/pantry'
require './lib/recipe'
require 'minitest/autorun'
require 'minitest/pride'

class PantryTest < Minitest::Test

  def test_pantry_can_add_ingredients
    p = Pantry.new
    p.add_ingredient("Bacon", 3)
    refute p.contains_ingredient?("Fish")
    assert p.contains_ingredient?("Bacon")
  end

  def test_pantry_has_enough_of_the_specified_ingredient
    p = Pantry.new
    p.add_ingredient("Bacon", 3)
    p.add_ingredient("Salt", 300)
    assert p.has_enough?("Bacon", 2)
    assert p.has_enough?("Bacon", 3)
    assert_equal false, p.has_enough?("Salt", 499)
  end

  def test_has_all_required_ingredients_for_a_recipe
    # create a recipe and add ingredients
    recipe = Recipe.new('whatevs')
    p = Pantry.new
    #add ingredients to pantry
    assert p.has_all_ingredients_for?(recipe)
  end

end
