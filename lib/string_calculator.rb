# frozen_string_literal: true

require_relative "string_calculator/version"

# StringCalculator provides functionality to calculate the sum of numbers
# provided in a comma-separated string.
module StringCalculator
  def self.add(numbers)
    # Check if custom delimiter exists
    if numbers.start_with?("//")
      delimiter, numbers = numbers.split("\n", 2)
      delimiter = delimiter.split("//").compact.first || ","
    else
      delimiter = ","
    end

    # Replace the delimiter with a comma, split by the delimiter, and convert to integers
    clean_numbers = numbers.gsub("\n", delimiter)
                           .split(delimiter)
                           .map(&:to_i)
    clean_numbers.compact.sum
  end
end
