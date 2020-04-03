=begin
    Caesar Cipher
    Write a method caesar_cipher that takes in a string and a number. 
    The method should return a new string where every character of the 
    original is shifted num characters in the alphabet.
=end
# Feel free to use this variable:
# alphabet = "abcdefghijklmnopqrstuvwxyz"

def caesar_cipher (str, num)
          #idx  0 1 2 3 4 5 6 7 8 9  10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25
    #alphabet ="a b c d e f g h i j  k  l  m   n  o  p  q  r  s  t  u  v  w  x  y  z"

    alphabet = "abcdefghijklmnopqrstuvwxyz"
    new_str = " "
    str.each_char do |char|
        old_idx = alphabet.index(char)
        new_idx = old_idx + num
        new_char = alphabet[new_idx % 26]
        new_str += new_char
    end
    return new_str
end

puts caesar_cipher("apple", 1)    #=> "bqqmf"
puts caesar_cipher("bootcamp", 2) #=> "dqqvecor"
puts caesar_cipher("zebra", 4)    #=> "difve"