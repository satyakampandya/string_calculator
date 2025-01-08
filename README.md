# StringCalculator Gem

StringCalculator is a Ruby gem that performs addition on numbers provided in string format. It's lightweight, simple to use, and ideal for scenarios where numbers are represented as strings and need to be summed programmatically.

## Features

- Perform addition on numbers in string format.
- Supports comma-separated numbers and custom delimiters.
- Handles edge cases like empty strings and invalid inputs gracefully (e.g., returns `0` for empty input).

## Installation

Since this gem is not published on RubyGems.org, install it directly from the GitHub repository.

Add this line to your application's Gemfile:

```ruby
gem 'string_calculator', git: 'https://github.com/satyakampandya/string_calculator.git'
```

Then execute:

```sh
bundle install
```

Alternatively, you can manually install it with:

```sh
git clone https://github.com/satyakampandya/string_calculator.git
cd string_calculator
bundle exec rake install
```

## Usage

Using StringCalculator is straightforward. You can call the module methods directly:

```ruby
require 'string_calculator'

# Adding a string of numbers
result = StringCalculator.add("1,2,3")
puts "Result: #{result}"  # Outputs: Result: 6

# Handling empty input
result = StringCalculator.add("")
puts "Result: #{result}"  # Outputs: Result: 0

# Adding numbers with custom delimiter
# Example: "//;\n1;2;3" => custom delimiter `;`
result = StringCalculator.add("//;\n1;2;3")
puts "Result: #{result}"  # Outputs: Result: 6
```

### Key Method

- **`StringCalculator.add(input_string)`**:  
  Parses a string of numbers and returns their sum. Supports:
    - **Comma-separated numbers**: e.g., `"1,2,3"` → `6`
    - **Custom delimiters**: e.g., `"//;\n1;2;3"` → `6`
    - **Empty input**: e.g., `""` → `0`

## Development

To contribute or explore the gem locally:

1. Clone the repository:

   ```sh
   git clone https://github.com/satyakampandya/string_calculator.git
   ```

2. Install dependencies:

   ```sh
   bin/setup
   ```

3. Run tests to ensure everything works as expected:

   ```sh
   rake spec
   ```

4. Use the interactive console for experimentation:

   ```sh
   bin/console
   ```

To install the gem onto your local machine for use in other projects, run the following:

```sh
bundle exec rake install
```

## Contributing

Bug reports and pull requests are welcome on GitHub at [StringCalculator GitHub Repository](https://github.com/satyakampandya/string_calculator). Contributions are highly appreciated to make this gem better for everyone!

## License

This project is open-source and available under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Contributors are expected to follow the [Code of Conduct](https://github.com/satyakampandya/string_calculator/blob/master/CODE_OF_CONDUCT.md) to foster a welcoming and inclusive environment.