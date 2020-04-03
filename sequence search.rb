=begin
    Sequence Search
    You are given two string, a sequence and a key. Write a method that determind
    if characters of the key appear iin order ( although not necessarily contiguously)
        in sequence.
        Example: 
            sequence_search("arcata", "cat") # => true
            sequence_search("c1a2t3", "cat") # => true
            sequence_search("cta", "cat") # => false
            sequence_search("caat", "cat") # => true
            ** Constraint:
                    you may not use regular Expressions (RegExp) in your solution.
=end

def sequence_search(word, key)
    keys = key.chars # same as key.split("")
    character = keys.shift
    i = 0
    while i < word.length
        if word[i] == character
            character = keys.shift 
        end
        i += 1   
    end
    character.nil?
end

puts sequence_search("arcata", "cat") # => true
puts sequence_search("c1a2t3", "cat") # => true
puts sequence_search("cta", "cat") # => false
puts sequence_search("caat", "cat") # => true
