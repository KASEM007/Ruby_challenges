=begin
    SELECT LONG WORD
    Write a method select_long_words(words) that takes in an array 
    of words and returns a new array containing all of the words of 
    the original array that are longer than 4 characters.
=end
def select_long_words(words)
    i = 0
    new_arr = []
    while i < words.length
        word = words[i]
        if word.length > 4
            new_arr << words[i]
        end

        i += 1
    end
    return new_arr

end

print select_long_words(["what", "are", "we", "eating", "for", "dinner"]) 
# => ["eating", "dinner"]
puts
print select_long_words(["keep", "coding"])  # => ["coding"]