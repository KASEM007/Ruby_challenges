=begin
    Vowel Cipher
    Write a method vowel_cipher that takes in a string and returns 
    a new string where every vowel becomes the next vowel in the alphabet.
=end
def vowel_cipher(string)
    arr = string.split("")
    new_str = []
    vowels = "aeiou"
    arr.each do |char|
        if vowels.include?(char)
            old_idx = vowels.index(char)
            new_idx = (old_idx + 1) % vowels.length
            new_str << vowels[new_idx]
        else
            new_str << char
        end
    end
    return new_str.join("")
end

puts vowel_cipher("bootcamp") #=> buutcemp
puts vowel_cipher("paper cup") #=> pepir cap