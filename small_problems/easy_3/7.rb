# def oddities(arr)
#   odd_elements = []
#   index = 0
#   while index < arr.size
#     odd_elements << arr[index]
#     index += 2
#   end
#   odd_elements
# end

def oddities(arr)
  odd_elements = []
  arr.select.with_index { |val, idx| odd_elements << val if idx % 2 == 0 }
  odd_elements
end

# def oddities(arr)

# end

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []