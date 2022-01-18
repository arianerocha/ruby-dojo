def get_first_element(array)
  array.first
  # array[0]
end

def get_last_element(array)
  array.last
  # array[-1]
end

def get_first_n_elements(array, n)
  array.take(n)
  # array[0..n-1]
end

def add_element_to_end_of_array(array, element)
  array.push(element)
  # array << element
end

def filter_array_by_numbers_bigger_than_n(array, n)
  array.select { |x| x > n }
  # array.select do |x|
  #   x > n
  # end
end

def multiple_each_array_number_by_n(array, n)
  array.map { |x| x * n }
  # array.map do |x|
  #   x * n
  # end
end

def remove_duplicated_from_array(array)
  array.uniq
end
