defmodule Day1Test do
  use ExUnit.Case
  doctest Day1

  test "reads numbers inside the input and return them as a list" do
    assert Day1.list_converter("""
    1000
    2000
    3000

    4000

    5000
    6000

    7000
    8000
    9000

    10000
    """) == ["1000\n2000\n3000", "4000", "5000\n6000", "7000\n8000\n9000", "10000\n"]
  end
end
