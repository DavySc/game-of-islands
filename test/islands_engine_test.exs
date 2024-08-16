defmodule IslandsEngineTest do
  use ExUnit.Case
  doctest IslandsEngine

  test "greets the world" do
    assert IslandsEngine.hello() == :world
  end

  test "out-of-bounds coordinate fails" do
    assert IslandsEngine.Coordinate.new(11, 1) == {:error, :invalid_coordinate}
  end

  test "l_shape island can be placed at (4,6)" do
    {:ok, coordinate} = IslandsEngine.Coordinate.new(4, 6)

    desired_island =
      {:ok,
       %IslandsEngine.Island{
         coordinates:
           MapSet.new([
             %IslandsEngine.Coordinate{row: 4, col: 6},
             %IslandsEngine.Coordinate{row: 5, col: 6},
             %IslandsEngine.Coordinate{row: 6, col: 6},
             %IslandsEngine.Coordinate{row: 6, col: 7}
           ]),
         hit_coordinates: MapSet.new([])
       }}

    assert IslandsEngine.Island.new(:l_shape, coordinate) = desired_island
  end
end
