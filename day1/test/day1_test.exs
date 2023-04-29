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
    """) == ["1000\n2000\n3000", "4000", "5000\n6000", "7000\n8000\n9000", "10000"]
  end

  test "returns the list of lists to integer" do
    assert Day1.list_parser(["1000\n2000\n3000", "4000", "5000\n6000", "7000\n8000\n9000", "10000"]) == [[1000, 2000, 3000], [4000], [5000, 6000],
  [7000, 8000, 9000], [10000]]

  end

  test "returns the sum of each list inside the list" do
    assert Day1.list_sum([[1000, 2000, 3000], [4000], [5000, 6000],
  [7000, 8000, 9000], [10000]]) == [6000, 4000, 11000, 24000, 10000]
  end

  test "returns biggest number 24000" do
    assert Day1.total([6000, 4000, 11000, 24000, 10000]) == 24000
  end

  test "returns top 3 carries" do
    assert Day1.top_carry([6000, 4000, 11000, 24000, 10000]) == [24000, 11000, 10000]
  end

  test "returns sum of top three carrying" do
    assert Enum.sum([24000, 11000, 10000]) == 45000
  end
end



