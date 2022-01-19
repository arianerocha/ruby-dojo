## Third problem involves finding the number of integers with a value greater than 5. In Ruby speak, you could put it like this: Given an array, count how many items are greater than 5.

# To solve this, you begin by outlining the logic, then translating it into code. An array is a collection of data.

# For example:

# Array = [17, 7, 3, 6, 10, 1]

# First, you go through the entire array and ask if each number is greater than 5.

# You then create a “count” variable by checking if each number has a value higher than 5. If it is, you count it, and if not, you don’t.

# def find_greater_than(values, number = 5)
#   count = 0
#   values.each do |value|
#     count += 1 if value > number
#   end
#   count
# end

# def find_greater_than(values, number = 5)
#   count = 0
#   values.each { |value| count += 1 if value > number } 
# end

def find_greater_than(values, number = 5)
  values.count { |value| value > number }
end

 # bundle exec ruby main.rb -- principal
 # bundle exec rspec main_spec.rb

 