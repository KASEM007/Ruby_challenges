=begin
    Frequent Letters
    Write a method frequent_letters that takes in a string and returns an array 
    containing the characters that appeared more than twice in the string.
=end
def frequent_letters(string)
    new_arr = []
    # creating a hash && assign the char as a key and the value is 
    # how many time that char appear in the string 
    count = Hash.new(0)
     
     string.each_char do |char|
        count[char]+= 1
    end
    # taking any value that appear more than two times and shuffel it to my array
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