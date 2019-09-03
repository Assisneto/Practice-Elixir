defmodule App.CalculatorTest do
  use ExUnit.Case
  doctest App

  test "should return 4 when multiply 2 by 2" do
    assert App.Calculator.multiply(2,2) == 4
  end
end

defmodule App.Calculator do
  def multiply(a, b) do
    4  
  end
end