# frozen_string_literal: true

RSpec.describe StringCalculator do
  it "returns 0 for empty string" do
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
end
