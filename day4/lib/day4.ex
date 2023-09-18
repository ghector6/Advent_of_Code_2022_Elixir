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
end
