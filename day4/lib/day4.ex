defmodule Day4 do
  @moduledoc """
  Documentation for `Day4`.
  """

  def pairs(input) do
    String.split(input, ",")
  end

  def inner_pairs(input) do
    Enum.map(input, fn(x) -> String.split(x, "-") end)
  end

  def convert_to_number(input) do
    Enum.map(input, fn(elem) -> Enum.map(elem, fn(inner) -> String.to_integer(inner) end) end)
  end

  def compare(input1, input2) do
    Enum.at(input1, 0) <= Enum.at(input2, 0) && Enum.at(input1, 1) >= Enum.at(input2, 1)
  end
end
