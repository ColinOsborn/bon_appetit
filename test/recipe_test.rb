require './lib/recipe'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class RecipeTest < Minitest::Test
  def test_it_has_a_name
    r = Recipe.new("Cheese Pizza")
    assert_equal "Cheese Pizza", r.name
  end

  def test_it_can_add_an_ingredient
    r = Recipe.new("Cheese Pizza")
    r.add_ingredient("Flour", 500) # 500 "UNIVERSAL UNITS"
    assert_equal ["Flour"], r.ingredients
    r.add_ingredient("Cheese", 1500)
    assert_equal ["Flour", "Cheese"], r.ingredients
  end

  def test_it_tracks_amount_of_a_recipe_required
    r = Recipe.new("Cheese Pizza")
    r.add_ingredient("Flour", 500)
    assert_equal 500, r.amount_required("Flour")
  end

  def test_it_returns_na_up_if_ingredient_does_not_exist
    r = Recipe.new("Chocolate Milk")
    assert_raises KeyError do
      r.amount_required("Cheese")
    end
  end

  def test_we_can_have_description
    r = Recipe.new("Grilled Cheese", "How to make your favorite snack!")
    assert_equal "How to make your favorite snack!", r.description
  end

  def test_we_can_set_the_description_on_an_existing_recipe
    r = Recipe.new("Grilled Cheese")
    r.description = "How to make your favorite snack!"
    assert_equal "How to make your favorite snack!", r.description
  end

  def test_we_can_see_the_description_changes
    r = Recipe.new("Grilled Cheese", "Heres's how to cook your favorite meal")
    assert_equal "Heres's how to cook your favorite meal", r.description
    r.description = "How to make your favorite snack!"
    assert_equal "How to make your favorite snack!", r.description
  end
end
