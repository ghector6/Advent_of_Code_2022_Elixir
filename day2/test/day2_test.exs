defmodule Day2Test do
  use ExUnit.Case
  doctest Day2

  test "reads,clean and convert data" do
    assert Day2.parse("""
      A Y
      B X
      C Z
    """) == ["A Y", "B X", "C Z"]
  end

  test "returns 8, 1 and 6" do
    assert Day2.game(["A Y", "B X", "C Z"]) == [8, 1, 6]
  end


end
