defmodule Day2 do
  @moduledoc """
  Documentation for `Day2`.
  """

 def parse(string)  do
   string
   |> String.trim()
   |> String.split("\n")
   |> Enum.map(&String.trim/1)
 end
end
