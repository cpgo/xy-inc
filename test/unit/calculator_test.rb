require 'test_helper'

class CalculatorTest < ActiveSupport::TestCase
  test "should get the right distance between two coords" do
    coord1 = {x: 9, y: 4}
    coord2 = {x: 4, y: 3}
    distance = Calculator.distance(coord1, coord2)
    assert_equal(distance, 5.09902)
  end

  test "list pois by proximity" do
    near_pois = Calculator.by_proximity(x:20, y:10, max: 10, list: Poi.all)
    assert_equal(near_pois, [
      {id: 1, name: "Lanchonete"}, 
      {id: 3, name: "Joalheria"}, 
      {id: 4, name: "Pub"}, 
      {id: 5, name: "Supermercado"}
    ])
  end
end