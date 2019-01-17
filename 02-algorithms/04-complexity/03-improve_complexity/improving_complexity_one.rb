# This method takes n arrays as input and combine them in sorted ascending  order
def version_one(*arrays)
  sorted_array = []
  arrays.flatten.each do |value|
    size = sorted_array.length
    if size == 0
      sorted_array << value
    else
      i = 0
      while i < size
        array_value = sorted_array[i]
        if array_value > value
          sorted_array.insert(i, value)
          break
        elsif i == size - 1
          sorted_array << value
          break
        end
        i += 1
      end
    end
  end

  # Return the sorted array
  sorted_array
end
