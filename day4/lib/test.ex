defmodule Test do
  def test(input) do
    segments = String.split(input, ",")
    ranges = Enum.map(segments, fn segment ->
      String.split(segment, "-")
      |> Enum.map(&String.to_integer/1)
    end)
    ranges
  end
end
