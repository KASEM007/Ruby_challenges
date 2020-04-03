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
=end
    def troublesome_translate(sentence)
        vowels = "aeiou"
        new_arr = []
        words = sentence.split(" ")
        
        if words.length < 3
            new_arr << words
        end

        words.each do |word|
            if vowels.include? (word[-1])
                new_arr << word * 2
            elsif word
        end

    end
    troublesome_translate('We like to go running fast') 
    # "We likelike to go runninging fastast"
    troublesome_translate('He cannot find the trash') 
    # "He cannotot findind thethe trashash"
    troublesome_translate('Pasta is my favorite dish') 
    # "Pastapasta is my favoritefavorite dishish"
    troublesome_translate('Her family flew to France') 
    # "Herer familyily flewew to Francefrance"
