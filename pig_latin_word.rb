=begin
    Write a method pig_latin_word that takes in a word string and 
    translates the word into a pig latin

    * Big latin translation uses the following rules:
    1- for words start with vowels, add "yay" to the end.
    2- for words start with a non vowel, move all letter 
    before the first vowel
    to the end of the wordand add "ay" to the end.   
=end

def big_latin_word(word)
    vowel = "aeiou"

    if vowel.include?(word[0])
        return word + "yay"
    end
    word.each_char.with_index do |char, idx|
        before = word[0...idx]
        after = word[idx..-1]
        if vowel.include?(char)
            final_word = after + before + "ay"
            return final_word
        end
    end
end

puts big_latin_word("apple")
puts big_latin_word("bananana")
puts big_latin_word("trash")
puts big_latin_word("eat")


######################### Another Answer #####################


def pig_latin_word(word)
    new_word = ""
    vowels = "aeiou"
    i = 0
    
    if vowels.include?(word[0])
      return word + "yay"
    end
    
    while i < word.length
      if vowels.include?(word[i])
        return word[i..-1] + word[0...i] + "ay"
      end
        i += 1
    end
    return new_word
  
end