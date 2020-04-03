=begin 
    While loops in action!
    replace the given arr with 1 if the number is even
    or 0 if the number is odd
=end

def binarize_even?(arr)
    i = 0
    new_arr = []
    while i < arr.length
        if arr[i].even?
            new_arr << 1
        elsif arr[i].odd?
            new_arr << 0
        end
        i += 1
    end
    return new_arr


end
p binarize_even?([2, 3, 6, 8, 34, 56, 70, 7])