require_relative "../lib/pantry"
require "minitest/autorun"
require "minitest/pride"

class PantryTest < MiniTest::Test

  def test_pantry_has_item
    p = Pantry.new
    p.stock_check("Cheese")
    assert_equal nil, p.stock_check("Cheese")
  end

  def test_restock_holds_value
    p = Pantry.new
    p.restock("Cheese", 10)
    assert_equal 10, p.stock_check("Cheese")
  end

  def test_can_add_of_an_item
    p = Pantry.new
    p.restock("Cheese", 10)
    assert_equal 10, p.stock_check("Cheese")
    p.restock("Cheese", 10)
    assert_equal 20, p.stock_check("Cheese")
  end

  def test_can_we_can_use_item
    p = Pantry.new
    p.restock("Cheese", 20)
    assert_equal 20, p.stock_check("Cheese")
    p.use("Cheese", 5)
    assert_equal 15, p.stock_check("Cheese")
  end

  def test_runout
    p = Pantry.new
    p.restock("Cheese", 10)
    assert_equal 10, p.stock_check("Cheese")
    response = p.use("Cheese", 15)
    assert_equal "You don't have enough Cheese.", response
  end

  def test_trying_to_use_item_we_dont_have
    p = Pantry.new
    response = p.use("Bacon", 5)
    assert_equal "You don't have Bacon!", response
  end
end
