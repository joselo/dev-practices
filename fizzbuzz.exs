defmodule FizzBuzz do
  def run(limit) do
    (1..limit)
    |> Stream.map(& process_range(&1))
    |> Enum.join(", ")
  end

  defp process_range(number) do
    div1 = rem(number, 3)
    div2 = rem(number, 5)

    get_result(div1, div2, number)
  end

  defp get_result(div1, div2, number) do
    case {div1, div2} do
      {0, 0} -> "Fizz Buzz"
      {0, _} -> "Fizz"
      {_, 0} -> "Buzz"
      _ -> number
    end
  end
end

IO.inspect FizzBuzz.run(30)
