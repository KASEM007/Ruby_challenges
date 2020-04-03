=begin
    Most Vowels
    Write a method most_vowels that takes in a sentence string 
    and returns the word of the sentence that contains the most vowels.
=end

def most_vowels(sentence)
    words = sentence.split
    hash = {}
    words.each {|word| hash[word] = count_vowels(word)}
    sorted = hash.sort_by{|k,v|v}
    return sorted[-1][0]
end

def count_vowels(word)
    count = 0
    vowel= "aeiou"
    word.each_char do |char|
        if vowel.include?(char)
            count += 1
        end
    end
    return count
end
print most_vowels("what a wonderful life") #=> "wonderful"
puts
print most_vowels("hoping to get in the BoooootCaaaaamp next month")
