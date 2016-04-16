require 'test_helper'

class Calculator
  def sum(x, y)
    x + y
  end

  def product(x, y)
    x * y
  end
end

class CalculatorTest < ActiveSupport::TestCase
  context "a calculator" do
    setup do
      @calculator = Calculator.new
    end

    should "add two numbers for the sum" do
      assert_equal 4, @calculator.sum(2, 2)
    end

    should "multiply two numbers for the product" do
      assert_equal 10, @calculator.product(2, 5)
    end
  end
end
