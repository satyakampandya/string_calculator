# frozen_string_literal: true

RSpec.describe StringCalculator do
  it "Returns 0 for empty string" do
    expect(StringCalculator.add("")).to eq(0)
  end

  it "Returns number when the input has one number" do
    expect(StringCalculator.add("1")).to eq(1)
  end

  it "Returns the sum of two numbers" do
    expect(StringCalculator.add("1,5")).to eq(6)
  end

  it "Returns the sum of any amount of numbers" do
    expect(StringCalculator.add("1,5,5")).to eq(11)
    expect(StringCalculator.add("2,3,5,7,11,13")).to eq(41)
  end

  it "Returns the sum of any amount of numbers with new line separator" do
    expect(StringCalculator.add("1\n2,3")).to eq(6)
  end

  it "Returns the sum of any amount of numbers with custom delimiter" do
    expect(StringCalculator.add("//;\n1;2")).to eq(3)
    expect(StringCalculator.add("//|\n1|2|3")).to eq(6)
    expect(StringCalculator.add("//||\n1||2||3")).to eq(6)
    expect(StringCalculator.add("//,,\n1,,2,,3")).to eq(6)
    expect(StringCalculator.add("//A\n1A2A3")).to eq(6)
    expect(StringCalculator.add("//,,\n,,")).to eq(0)
  end
end
