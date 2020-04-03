=begin 
    In this kata you are required to, given a string, replace every 
    letter with its position in the alphabet.
    If anything in the text isn't a letter, 
    ignore it and don't return it.
    "a" = 1, "b" = 2, etc.

    Example
    alphabet_position("The sunset sets at twelve o' clock.")
=end

def alphabet_position(text)
    alpha = "abcdefghijklmnopqrstuvwxyz"
    numbers = []
    text.each_char do |char|
        if alpha.include?(char)
          numbers << alpha.index(char)
        end
     end
     return numbers.to_s    
end

p alphabet_position("mohamed")
p alphabet_position("the sunset sets at twelve o' clock.")