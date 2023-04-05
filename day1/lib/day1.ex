defmodule Day1 do
  @moduledoc """
  Documentation for `Day1`.
  """

  def list_converter(input) do
    input
    |> String.trim()
    |> String.split("\n\n")
  end

  def list_parser(list) do
    #    [
    #      ["1000", "2000", "3000"],
    #      ["4000"],
    #      ["5000", "6000"],
    #      ["7000", "8000", "9000"],
    #      ["10000"]
    #    ]
    list
    |> Enum.map(&String.split(&1,"\n"))
    |> Enum.map(fn inside -> Enum.map(inside, &String.to_integer/1) end)
  end

  def list_sum(list) do
  end


end
