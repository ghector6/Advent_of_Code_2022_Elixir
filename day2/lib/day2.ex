defmodule Day2 do
  @moduledoc """
  Documentation for `Day2`.
  """
  @posibilities  %{
    "A X" => 4, "A Y" => 8, "A Z" => 3,
    "B X" => 1, "B Y" => 5, "B Z" => 9,
    "C X" => 7, "C Y" => 2, "C Z" => 6
  }

  @posibilities_pt2  %{
    "A X" => 3, "A Y" => 4, "A Z" => 8,
    "B X" => 1, "B Y" => 5, "B Z" => 9,
    "C X" => 2, "C Y" => 6, "C Z" => 7
  }

  @path Path.expand("../input_day2.txt", __DIR__)

  def handler() do
    File.read!(@path)
    |> parse()
    |> game()
    |> total()

  end
  def handler_pt2() do
    File.read!(@path)
    |> parse()
    |> game_pt2()
    |> total()

  end

   def parse(string)  do
     string
     |> String.trim()
     |> String.split("\n")
     |> Enum.map(&String.trim/1)
   end
  def game(list) do
    for round <- list, do:  @posibilities[round]
  end


  def game_pt2(list) do
    for round <- list, do:  @posibilities_pt2[round]
  end


  def total(list), do: Enum.sum(list)

end
