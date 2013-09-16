class Calculator
  def add(x, y)
    x + y
  end
end

describe Calculator do
  describe "#add" do
    it "calculates the sum of 2 numbers" do
      calc = Calculator.new
      result = calc.add(1,2)
      expect(result).to eq 3
    end
  end
end
