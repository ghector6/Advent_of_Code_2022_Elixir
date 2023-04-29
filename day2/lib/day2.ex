defmodule Day2 do
  @moduledoc """
  Documentation for `Day2`.
  """
  @posibilities  %{
    "A X" => 4, "A Y" => 8, "A Z" => 3,
    "B X" => 1, "B Y" => 5, "B Z" => 9,
    "C X" => 7, "C Y" => 2, "C Z" => 6
  }
   def parse(string)  do
     string
     |> String.trim()
     |> String.split("\n")
     |> Enum.map(&String.trim/1)
   end

  def game(list) do
    for round <- list, do:  @posibilities[round]
  end

  def total_pt1(list), do: Enum.sum(list)

end
