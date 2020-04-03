=begin
    Troublesome Translate
    Write a method troublesome_translate that accepts a sentence
    as an argument. The method should translate the sentence according
    to the following rules:

    words that are shorter than 3 characters are unchanged
    words that are 3 characters or longer are translated according
    to the following rules:
    if the word ends with a vowel, simply repeat the word twice 
        (example: 'like'->'likelike')
    if the word ends with a non-vowel, repeat all letters that come 
        after the word's last vowel, including the last vowel itself 
        (example: 'trash'->'trashash')
    Note that if words are capitalized in the original sentence, 
    they should remain capitalized in the translated sentence. 
    Vowels are the letters a, e, i, o, u.

    Examples:
    troublesome_translate('We like to go running fast') 
    # "We likelike to go runninging fastast"
    troublesome_translate('He cannot find the trash') 
    # "He cannotot findind thethe trashash"
    troublesome_translate('Pasta is my favorite dish') 
    # "Pastapasta is my favoritefavorite dishish"
    troublesome_translate('Her family flew to France') 
    # "Herer familyily flewew to Francefrance"
=end
# Complete the 'troublesome_translate' function below.
#
# The function is expected to return a STRING.
# The function accepts STRING sentence as parameter.
#

def troublesome_translate(sentence)
    # If the word is shorter than 3 characters, then these should be unchanged
        # IF word.length < 3
        #     new_string += word
        # ELSE
        #     IF word ends in a vowel
            
    vowels = "aeiou"
    words = sentence.split(" ")
    new_arr = []
    
    words.each do |word|
        ele = word.length - 1
        # words less than 3 char
        if word.length < 3
            new_arr << word
            #words with last letter is a vowel
        elsif vowels.include?(word[ele]) #evaluate to the last index
            new_arr << word * 2
            # words does not end with a vowels , we need to find the vowel and repeat 
            # the word from that vowel to the end, including the vowel.
        else
            idx = ele - 1
            while idx >= 0
                if vowels.include?(word[idx])
                    new_arr << word + word[idx..-1]
                end
                idx -= 1
            end
            
        end
    end
    return new_arr.join(" ")

end

puts troublesome_translate('We like to go running fast') 
                        # "We likelike to go runningunning fastast"
puts troublesome_translate('He cannot find the trash') 
                        # "He cannotot findind thethe trashash"
puts troublesome_translate('Pasta is my favorite dish') 
                        # "Pastapasta is my favoritefavorite dishish"
puts troublesome_translate('Her family flew to France') 
                        # "Herer familyily flewew to Francefrance"

