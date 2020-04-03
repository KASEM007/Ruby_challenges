=begin
    write a method divisible_count that takes in an array and a number 
    factorthe method should return a count representing the number of
     elements of the array that are divisible by the given factor  
=end

def divisible_count (arr, factor)
    i = 0
    count = 0
    while i < arr.length
        if arr[i] % factor == 0
            count += 1
        end
        i += 1
    end
    return count
end
puts divisible_count([10, 6, 30, 17], 5)
puts divisible_count([24, 2, 6, 12], 3)  
