# frozen_string_literal: true

require_relative "string_calculator/version"

# StringCalculator provides functionality to calculate the sum of numbers
# provided in a comma-separated string.
module StringCalculator
  def self.add(numbers)
    clean_numbers = numbers.gsub("\n", ",")
                           .split(",")
                           .reject(&:empty?)
                           .map(&:to_i)
    clean_numbers.sum
  end
end
