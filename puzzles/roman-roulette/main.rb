n = 5
k = 2
i = 1
my_list = []

(i-1...n+i-1).each do |x|
  my_list << ((x%n) + 1)
end

p my_list

while my_list.length > 1
  my_list.delete_at(k % my_list.length) # matando késima

  x = my_list[0]
  my_list.delete_at(0)
  my_list << x

  p my_list
end
