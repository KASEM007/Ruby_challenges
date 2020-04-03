=begin 
    Write a method that takes in a string and returns the number of times that 
    the same letter repeats twice in a row.
=end

# def double_letter_count (string)
#     count = 0
#     string.each_char.with_index do |char, idx|
#         if string[idx] == string[idx + 1]
#             count += 1
#         end
#     end
#     return count
    
# end

##################### My Answer #####################

def double_letter_count(string)
    i = 0
    count = 0
    while i < string.length
        letter01 = string[i]
        letter02 = string[i + 1]
        if letter01 == letter02
            count += 1
        end
        i += 1
    end
    return count
end

puts double_letter_count("the jeep rolled down the hill") #=> 3
puts double_letter_count("bootcamp") #=> 1