=begin
    Magic Number
    A magic number is a number whose digits, when added together, 
    sum to 7, e.g., 34. Define a method that returns an array of the 
    first n magic numbers. You may wish to write a helper method (magic_number?) 
    that returns a boolean indicating whether a number is magic. This problem is 
    harder than anything you'll receive on the coding assessment.
=end
#magic_numbers(3) => [7, 16, 25]

def magic_number?(n)
    string = n.to_s.split("")
    sum = 0
    i = 0
    while i < string.length
        digit = string[i]
        sum = sum + digit.to_i
        i = i + 1
    end
    sum == 7
end
#p magic_number?(16)
def magic_numbers(n)
    magic_arr = []
    i = 1
    while magic_arr.length < n
        if magic_number?(i)
            magic_arr << i
        end
        i += 1
    end
    return magic_arr
end
p magic_numbers(3)