=begin 
    Frequent Letters
    Write a method frequent_letters that takes in a string and 
    returns an array containing the characters that appeared more 
    than twice in the string.
=end
def frequent_letters(str)
    count= Hash.new(0)
    str.each_char{|char| count[char] += 1}
    
    new_arr = []
    count.each do |k, v|
        if v > 2
            new_arr << k
        end
    end
    return new_arr

end
print frequent_letters('mississippi') #=> ["i", "s"]
puts
print frequent_letters('bootcamp') #=> []
puts