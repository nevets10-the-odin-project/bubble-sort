def bubble_sort(array)
  result = Array.new(array)
  sorted = false

  while sorted == false do
    swap_count = 0

    result.each_with_index do |cur_num, cur_index|
      unless result[cur_index + 1] then
        next
      end

      next_num = result[cur_index + 1]

      if cur_num > next_num then
        result[cur_index] = next_num
        result[cur_index + 1] = cur_num
        swap_count += 1
      end
    end

    if swap_count == 0 then
      sorted = true
    end
  end

  result
end

outer_array = [4,3,78,2,0,2]

p bubble_sort(outer_array)