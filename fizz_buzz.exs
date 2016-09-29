fizz_finder = fn
  (0, 0, _) -> "FizzBuzz"
  (0, _, _) -> "Fizz"
  (_, 0, _) -> "Buzz"
  (_, _, x) -> x
end

fizz_buzz = fn (x) ->
  fizz_finder.(rem(x, 3), rem(x, 5), x)
end

IO.inspect Enum.map(1..100, fizz_buzz)