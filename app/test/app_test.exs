defmodule App.CalculatorTest do
  use ExUnit.Case
  doctest App

  test "should return 4 when multiply 2 by 2" do
    assert App.Calculator.multiply(2,2) == 4
  end

  test "should return 6 when multiply 2 by 3" do
    assert App.Calculator.multiply(2,3) == 6
  end

end

defmodule App.Calculator do
  def multiply(a, b) do
    a * b
  end
end