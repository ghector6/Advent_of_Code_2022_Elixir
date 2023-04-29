defmodule Day1 do

  @moduledoc """
  Documentation for `Day1`.
  """
  def handler() do
   reader()
   |> list_converter()
   |> list_parser()
   |> list_sum()
   |> total()
  end
  def handler_2() do
   reader()
   |> list_converter()
   |> list_parser()
   |> list_sum()
   |> top_carry()
   |> Enum.sum()
  end

  @boo Path.expand("../input_data.txt", __DIR__)
  def reader() do
    @boo
    |> File.read!()
  end

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
    Enum.map(list, &Enum.sum/1)
  end

  def total(list) do
   Enum.max(list)
  end

  def top_carry(list) do
    Enum.sort(list, &(&1 >= &2))
    |> Enum.take(3)
  end


end

