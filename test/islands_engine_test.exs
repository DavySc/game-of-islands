defmodule IslandsEngineTest do
  use ExUnit.Case
  doctest IslandsEngine

  test "greets the world" do
    refute IslandsEngine.hello() == :world
  end
end
