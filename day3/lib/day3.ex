defmodule Day3 do
  @moduledoc """
  Documentation for `Day3`.
  """

  @lowercase_map for l <- ?a..?z, n <- 1..26, l - 96 == n, into: %{}, do: {List.to_string([l]), n}

  @uppercase_map for l <- ?A..?Z, n <- 27..52, l - 38 == n, into: %{}, do: {List.to_string([l]), n}
  @foo Path.expand("../input.txt", __DIR__)
  def reader() do
    IO.inspect @foo
    @foo |> File.read!()
  end

  def solution1(), do: rearrangement(reader())
  def solution2(), do: rearrangement2(reader())

  def rearrangement2(input) do
    input
    |> String.split("\n", trim: true)
    |> Enum.map(fn x-> String.split(x,"", trim: true)end)
    |> Enum.chunk_every(3)
    |> Enum.map(&common_items/1)
    |> Enum.map(&score_letter/1)
    |> Enum.reduce(fn x, acc -> x + acc end)
  end

  defp common_items([a,b,c]) do
    for i1 <- a, i2 <- b, i3 <- c, (i1 == i2 and i2 == i3), uniq: true, do: i1
  end

  def rearrangement(input) do
    input
    |> String.split("\n", trim: true)
    |> Enum.map(&split_half/1)
    |> Enum.map(&split_letters/1)
    |> Enum.map(&intersect_letters/1)
    |> Enum.map(&score_letter/1)
    |> Enum.reduce(fn x, acc -> x + acc end)
  end

  defp score_letter([letter]) do
    @lowercase_map |> Map.get( letter, Map.get(@uppercase_map, letter))
  end

  defp intersect_letters({l1, l2}) do
    for i1 <- l1, i2 <- l2, i1 == i2, uniq: true, do: i1
  end

  defp split_half(e) do
    half = e |> String.length() |> Kernel./(2) |> round()
    e
    |> String.split_at(half)
  end

  defp split_letters({h1, h2}) do
    {
      String.split(h1, "", trim: true),
      String.split(h2, "", trim: true)
    }
  end

  def counter(string) do
    String.length(string) / 2 |> round()
  end

  def list_maker(string) do
    String.split_at(string, counter(string)) |> Tuple.to_list()
  end
end

s = "vJrwpWtwJgWrhcsFMMfFFhFp\njqHRNqRjqzjGDLGLrsFMfFZSrLrFZsSL\nPmmdzqPrVvPwwTWBwg\nwMqvLMZHhHMvwLHjbvcjnnSBnvTQFn\nttgJtRGJQctTZtZT\nCrZsJsPPZsGzwwsLwLmpwMDw\n"
#IO.inspect Day3.rearrangement2(s)
