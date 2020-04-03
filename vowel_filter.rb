=begin
    Vowel_filter
    given a string, remove every vowel if its index is odd.
    Hint: Rather than deleting the characters(whitch would 
        shift which characters are even and odd each time),
    construct a new string without the unwelcome vowels.
=end
def vowel_filter(str)
    new_str = ""
    i = 0
    vowels = "aeiou"
    while i < str.length
        unless i.odd? && vowels.include?(str[i])
            new_str += str[i]
        end
        i += 1
    end
    new_str

end
p vowel_filter("banana")
p vowel_filter("bootcamp")
