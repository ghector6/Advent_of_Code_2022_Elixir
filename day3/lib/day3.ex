defmodule Day3 do
  @moduledoc """
  Documentation for `Day3`.
  """

  def counter(string) do
    String.length(string) / 2 |> round()
  end

  def list_maker(string) do
    String.split_at(string, counter(string)) |> Tuple.to_list()
  end
end
