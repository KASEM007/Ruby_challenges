=begin
    Tow_sum
    Define a method, two_sum, that accepts an array and a target 
    sum (integer) as argument. the methodshould return true if any
    two integers in the array sum to the target.
    otherwise, it should return false.
=end
# Assume the array will only contain integers.
def two_sum (arr, target)
    i = 0
    while i < arr.length - 1
        x = i + 1

        while x < arr.length
            sum = arr[i] + arr[x]
            if sum == target
                return true
            end
            x += 1
        end
        
        i += 1
    end
    return false
end

puts two_sum([1, 2, 4],5)
puts two_sum([1, 2, 4],7)
puts two_sum([1, 2, 4],6)