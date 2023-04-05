defmodule Day1 do
  @moduledoc """
  Documentation for `Day1`.
  """

  def list_converter(input) do
    input
    |> String.trim()
    |> String.split("\n\n")
  end


end
