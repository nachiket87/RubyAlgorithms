# frozen_string_literal: true

def easy_merge_arrays(array1, array2)
  array3 = [array1, array2].flatten.sort # easy way
end

def merge_arrays(my_array, alices_array)
  merged_array_size = my_array.length + alices_array.length

  merged_array = Array.new(merged_array_size)

  current_index_mine = 0
  current_index_alice = 0
  current_index_merged = 0

  while current_index_merged < merged_array_size
    is_my_array_exhausted = current_index_mine >= my_array.length
    is_alice_array_exhausted = current_index_alice >= alices_array.length

    if !is_my_array_exhausted && (is_alice_array_exhausted || (my_array[current_index_mine] < alices_array[current_index_alice]))
      merged_array[current_index_merged] = my_array[current_index_mine]
      current_index_mine += 1

    else
      merged_array[current_index_merged] = alices_array[current_index_alice]
      current_index_alice += 1
    end
    current_index_merged += 1
  end

  merged_array
end
