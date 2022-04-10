def merge_sort (arr)
    pp arr
    return arr if arr.length < 2

    left = (arr[0..arr.length/2-1])
    right = (arr[arr.length/2..arr.length-1])
    left = merge_sort(left)
    right = merge_sort(right)
    
    sorted = []
    

    def merge(left_arr, right_arr, sorted_arr)
        return sorted_arr if left_arr.length == 0 && right_arr.length == 0
        if left_arr.length == 0 
            return sorted_arr.push(right_arr).flatten!
        elsif right_arr.length == 0
            return sorted_arr.push(left_arr).flatten!
        else
            if left_arr[0] <= right_arr[0]
                sorted_arr.push(left_arr[0])
                left_arr.shift
                merge(left_arr, right_arr, sorted_arr)
            else
                sorted_arr.push(right_arr[0])
                right_arr.shift
                merge(left_arr, right_arr, sorted_arr)
            end
        end
    end

    merge(left,right, sorted)

    return sorted
end

arr = [5, 12, 13, 95, 75,121, 2, 1, 8, 6, 7]
pp merge_sort(arr)