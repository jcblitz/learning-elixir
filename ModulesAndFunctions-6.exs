defmodule Chop do
  def guess(actual, range = low..high) do 
    guess = div(low+high, 2)
    IO.puts "Is it #{guess}?"
    _check(actual, guess, range)
  end

  defp _check(actual, actual, _), 
    do: IO.puts "Good guess! It's #{actual}!"

  defp _check(actual, guess,  _low..high)
    when guess < actual,
    do: guess(actual, guess+1..high)

  defp _check(actual, guess,  low.._high) 
    when guess > actual, 
    do: guess(actual, low..guess-1)
end

Chop.guess(273, 1..1000)