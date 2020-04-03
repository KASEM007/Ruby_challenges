# EASY 

def demo(a, b)
    a = b - 2
 
    b = a - 3
   
end
puts demo(5, 6) # outputs 1

# Return the middle character of a string. Return the middle two characters 
#if the word is of even length, 
# e.g., middle_substring("middle") => "dd", 
# middle_substring("mid") => "i"
def middle_substring(str)
    # your code goes here
    mid = str.length / 2

    if str.length.odd?
      return str[mid]
    end
  
    #this code is reachable only if the argument is of even length
    str[mid-1..mid] 
end
  
  # Return the number of vowels in a string.
    def num_vowels(str)
        # your code goes here
        vowel_count = 0
        vowels = ["a", "e", "i", "o", "u"]
      
        str_idx = 0
        while str_idx < str.length
          ch = str[str_idx]
      
          if vowels.include?(ch.downcase)
            vowel_count = vowel_count + 1
          end
      
          str_idx = str_idx + 1
        end      
        vowel_count
    end
    
  
# MEDIUM 
  
  # Return the argument with all its lowercase characters removed.
def destructive_uppercase(str)
    # your code goes here
    i = 0
    count = 0
    vowels = "aeiou"
    while i < str.length
        char = str[i]
        if vowels.include?(char.downcase)
            count += 1
        end
        i += 1
    end
    return count
end
  
  # Write a method that returns an array containing 
  # all the elements of the argument array in reverse order.
def my_reverse(arr)
    # your code goes here
    reversed = []
    i = 0
    while i < arr.length
      el = arr[i]
      reversed.unshift(el)
      i = i + 1
    end  
    reversed
end
  
  
  # HARD 
  
  # Write your own version of the join method. 
  # Assume this method will always receive a 
  # separator as the second argument.
  def my_join(arr, separator)
    # your code goes here
    join = ""
    idx = 0
  
    while idx < arr.length  
      join = join + arr[idx]
  
      if idx != arr.length - 1 # Don't want to add the separator after the last element
        join = join + separator
  
      end
      idx = idx + 1
    end
  
    join
  end
  
  # Return an array of integers from 1 to 30 (inclusive), 
  #except for each multiple of 3 replace the integer 
  #with "fizz", for each multiple of 5 replace the integer with "buzz", 
  #and for each multiple of both 3 and 5, replace the integer with "fizzbuzz".
def fizzbuzz(int)
    # your code goes here
    fizzbuzzers = []
    int = 1
  
    while int < 31
  
      if int % 3 == 0 && int % 5 == 0
        fizzbuzzers << "fizzbuzz"
      elsif int % 5 == 0
        fizzbuzzers << "buzz"
      elsif int % 3 == 0
        fizzbuzzers << "fizz"
      else
        fizzbuzzers << int
      end
  
      int = int + 1
    end  
    return fizzbuzzers  
end

  
 