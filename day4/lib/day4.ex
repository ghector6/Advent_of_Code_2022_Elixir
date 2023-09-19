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
end
