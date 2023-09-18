defmodule Day4Test do
  use ExUnit.Case
  doctest Day4

  test "Test to split in the comma" do
    assert Day4.pairs("2-4,6-8") == ["2-4", "6-8"]
  end
end
