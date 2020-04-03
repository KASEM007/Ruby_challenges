=begin 
Write a method even_sum that takes in an array of numbers
and return the sum of all even numbers in the array
=end
def even_sum (arr)
    i = 0
    sum = 0
    while i < arr.length
        if arr[i] % 2 == 0
            sum += arr[i]
        end
        i += 1
    end
    return sum
end

puts even_sum ([6, 5, 3, 4]) # 10
puts even_sum ([12, 13, 2, 1, 4]) # 18 