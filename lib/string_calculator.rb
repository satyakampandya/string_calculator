# frozen_string_literal: true

require_relative "string_calculator/version"

# StringCalculator provides functionality to calculate the sum of numbers
# provided in a comma-separated string.
module StringCalculator
  # NegativeNumberError is a custom exception class that inherits from StandardError.
  # It is raised when the provided string contains negative numbers.
  class NegativeNumberError < StandardError
    def initialize(negative_numbers)
      super("Negative numbers not allowed: #{negative_numbers.join(", ")}")
    end
  end

  def self.add(numbers)
    # Check if custom delimiter exists
    delimiter, numbers = extract_delimiter_and_numbers(numbers)

    # Replace the delimiter with a comma, split by the delimiter, and convert to integers
    clean_numbers = numbers.gsub("\n", delimiter).split(delimiter).map(&:to_i)

    # Check for negative numbers and raise an exception with a detailed message
    negative_numbers = clean_numbers.select(&:negative?)
    raise NegativeNumberError, negative_numbers if negative_numbers.any?

    clean_numbers.compact.reject { |number| number > 1000 }.sum
  end

  # Extracts the delimiter and the numbers from the input string
  def self.extract_delimiter_and_numbers(numbers)
    if numbers.start_with?("//")
      delimiter, numbers = numbers.split("\n", 2)
      delimiter = delimiter.split("//").reject(&:empty?).first || ","
    else
      delimiter = ","
    end
    [delimiter, numbers]
  end
end
