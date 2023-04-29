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
end
