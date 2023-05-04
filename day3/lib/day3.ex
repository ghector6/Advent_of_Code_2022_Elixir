defmodule Day3 do
  @moduledoc """
  Documentation for `Day3`.
  """

  def counter(string) do
    String.length(string) / 2 |> round()
  end

  def list_maker(_string) do
    ["vJrwpWtwJgWr", "hcsFMMfFFhFp"]
  end
end
