# Write a function gcd(x,y) that finds the greatest common divisor between two nonnegative integers. 
# Algebraically, gcd(x,y) is x if y is zero; it’s gcd(y, rem(x,y)) otherwise.

defmodule MathTool do
  def gcd(x,0), do: x
  def gcd(x,y), do: gcd(y, rem(x,y))
end

IO.puts MathTool.gcd(20, 15)   #=> 5
IO.puts MathTool.gcd(20, 16)   #=> 4
IO.puts MathTool.gcd(23, 17)   #=> 1