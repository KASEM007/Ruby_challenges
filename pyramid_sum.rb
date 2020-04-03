=begin
    Write a method pyramid_sum that takes in an array of numbers representing 
    the base of a pyramid. The function should return a 2D array representing 
    a complete pyramid with the given base. To construct a level of the pyramid, 
    we take the sum of adjacent elements of the level below.
    # For example, the base [1, 4, 6] gives us the following pyramid
    #     15
    #   5   10
    # 1   4    6

=end

def pyramid_sum(base)
    pyramid = [base]

    while pyramid.length < base.length
        arr_01 = pyramid[0]
        arr_02 = adjacent(arr_01)
        pyramid.unshift(arr_02)
    end
    return pyramid
end

def adjacent(arr)
    new_arr =[]
    i = 0
    while i < arr.length - 1
        new_ele = arr[i] + arr[i + 1]
        new_arr << new_ele
        i += 1
    end
    return new_arr
end

# print adjacent([1, 4, 6]) #=> [5, 10]
# print adjacent([5, 10]) # =>[15] 

print pyramid_sum([1, 4, 6]) #=> [[15], [5, 10], [1, 4, 6]]
puts

print pyramid_sum([3, 7, 2, 11]) #=> [[41], [19, 22], [10, 9, 13], [3, 7, 2, 11]]
puts