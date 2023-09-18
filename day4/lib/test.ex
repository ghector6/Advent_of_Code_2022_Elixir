defmodule Test do
  def test(input) do
    segments = String.split(input, ",")
    ranges = Enum.map(segments, fn segment ->
      [start, last] = String.split(segment, "-")
      {String.to_integer(start), String.to_integer(last)}
    end)
    ranges
  end
end
