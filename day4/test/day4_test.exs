defmodule Day4Test do
  use ExUnit.Case
  doctest Day4

  test "Test to split in the comma" do
    assert Day4.pairs("2-4,6-8") == ["2-4", "6-8"]
  end

  test "Test to obtain a pairs of inner lists" do
    assert Day4.inner_pairs(["2-4", "6-8"]) == [["2", "4"], ["6", "8"]]
  end

  test "Test to convert each element inside the inner list into number" do
    assert Day4.convert_to_number([["2", "4"], ["6", "8"]]) == [[2, 4], [6, 8]]
  end

  test "Compares if 2 is <= 6 and 4 >= 8 and if so returns true" do
    assert Day4.compare([2, 4], [6, 8]) == true
  end
end
