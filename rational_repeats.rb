=begin
    Rational Repeats
 

    Write a method rational_repeats that accepts a string and a hash as arguments. 
    The method should return a new string where characters of the original string 
    are repeated the number of times specified by the hash. If a character does not 
    exist as key of the hash, then it should remain unchanged.

    

    Examples:
    rational_repeats('taco', {'a'=>3, 'c'=>2}) # 'taaacco'
    rational_repeats('feverish', {'e'=>2, 'f'=>4, 's'=>3}) # 'ffffeeveerisssh'
    rational_repeats('misispi', {'s'=>2, 'p'=>2}) # 'mississppi'
    rational_repeats('faarm', {'e'=>3, 'a'=>2}) # 'faaaarm'
=end
# Complete the 'rational_repeats' function below.
#
# The function is expected to return a STRING.
# The function accepts following parameters:
#  1. STRING string
#  2. HASH h


def rational_repeats(string, h)
    new_str = ""
    string.each_char do |char|
        if (h).has_key?(char)
            new_str += char * h[char]
        else
            new_str += char
        end
    end
    return new_str
end

rational_repeats('taco', {'a'=>3, 'c'=>2}) # 'taaacco'
rational_repeats('feverish', {'e'=>2, 'f'=>4, 's'=>3}) # 'ffffeeveerisssh'
rational_repeats('misispi', {'s'=>2, 'p'=>2}) # 'mississppi'
rational_repeats('faarm', {'e'=>3, 'a'=>2}) # 'faaaarm'