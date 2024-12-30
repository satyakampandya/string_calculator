# frozen_string_literal: true

require_relative "string_calculator/version"

# StringCalculator provides functionality to calculate the sum of numbers
# provided in a comma-separated string.
module StringCalculator
  def self.add(numbers)
    numbers.split(",").map(&:to_i).reduce(0) { |number, sum| sum + number }
  end
end
