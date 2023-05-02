def merge_sort(array)
  if array.length < 2
    return array
  end
  half = array.length / 2
  left = merge_sort(array[0...half])
  right = merge_sort(array[half..array.length])
  sorted_array = []
  until left.empty? || right.empty?
    if right.first > left.first
      sorted_array << left.shift
    else
      sorted_array << right.shift
    end
  end
  sorted_array + left + right
end

p merge_sort([5, 4, 1, 60, 2, 15])
