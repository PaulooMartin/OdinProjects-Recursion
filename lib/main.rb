def merge_sort(unsorted)
  arr_length = unsorted.length
  return unsorted if arr_length == 1

  left = merge_sort(unsorted.slice(0, arr_length / 2))
  right = merge_sort(unsorted.slice(arr_length / 2, arr_length))

  merged = []
  until left.empty? || right.empty?
    merged << if left[0] < right[0]
                left.shift
              else
                right.shift
              end
  end
  merged + left + right
end

def fibonacci; end

# Ideally
unsorted_array = [3, 4, 2, 1, 1, 5, 0, 10, 9, 7, 8, 6]
sorted_array = merge_sort(unsorted_array)

p sorted_array
