defmodule IslandsEngineTest do
  use ExUnit.Case
  doctest IslandsEngine

  test "greets the world" do
    assert IslandsEngine.hello() == :world
  end

  test "out-of-bounds coordinate fails" do
    assert IslandsEngine.Coordinate.new(11, 1) == {:error, :invalid_coordinate}
  end
end
