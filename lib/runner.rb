# Read and use the ruby docs for CSV found here [https://ruby-doc.org/stdlib-2.6.5/libdoc/csv/rdoc/CSV.html]
# Within the runner.rb file, write some code that will print each row from animal_lovers.csv to the terminal.
# When you’ve been able to print each row, then see if you can also print the header with the value for each row.

# If you are stuck, reference this page for help: https://backend.turing.edu/module1/lessons/csv_walkthrough

require 'csv'

contents = CSV.open('./data/animal_lovers.csv', headers: true, header_converters: :symbol)
puts contents
contents.each do |row|
  id = row[:id]
  first_name = row[:first_name]
  last_name = row[:last_name]
  age = row[:age]
end