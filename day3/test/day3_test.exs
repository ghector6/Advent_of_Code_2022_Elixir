defmodule Day3Test do
  use ExUnit.Case
  doctest Day3

  test "returns 12 as the length of this vJrwpWtwJgWrhcsFMMfFFhFp" do
    assert Day3.counter("vJrwpWtwJgWrhcsFMMfFFhFp") == 12
  end
end
