defmodule App.CalculatorTest do
  use ExUnit.Case
  doctest App

  test "should return 4 when multiply 2 by 2" do
    assert App.Calculator.multiply(2,2) == 4
  end

  test "should return 6 when multiply 2 by 3" do
    assert App.Calculator.multiply(2,3) == 6
  end

  test "should return nil when multiply 2 by nil" do
    assert App.Calculator.multiply(2,nil) == nil
  end
  test "should return nil when multiply nil by 2" do
    assert App.Calculator.multiply(nil,2) == nil
  end
  test "should return 10 when multiply 2 by 4" do
    refute App.Calculator.multiply(2,4) == 10, "This is an error"
  end
end

defmodule App.Calculator do
  def multiply(a, b) do
    cond do
      is_nil(a) || is_nil(b) -> nil
      true -> a * b
    end
  end
end