# Sum_to
#Define a method that returns the sum of all the 
#non-negative integers up to 
# and including its argument.
# sum_to(3) => 6
def sum_to(int)
    i = 1
    sum = 0
    while i < int + 1
        sum += i
        puts sum
        i += 1 
    end
    return sum
end
p sum_to(3)

=begin
    e_words
    Define a method, #e_words(str), that accepts a string 
    as an argument. 
    Your method return the number of words in the string 
    that end with the letter "e".
    e_words("tree") => 1
    e_words("Let be be finale of seem.") => 3
=end
# def e_words(str)
#     words = str.split
#     i = 0
#     count = 0
#     while i < str.length
#         if str[i] == "e"
#             count += 1
#         end
#         i += 1
#     end
#     return count

# end

=begin
    A magic number 
    is a number whose digits, when added together, 
    sum to 7, e.g., 34. Define a method that returns an array of the 
    first n magic numbers. You may wish to write a helper 
    method (magic_number?) 
    that returns a boolean indicating whether a number is magic. 
    This problem is 
    harder than anything you'll receive on the coding assessment.
    magic_numbers(3) => [7, 16, 25]
=end

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
