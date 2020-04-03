# Define a method that returns a boolean indicating 
#whether any two elements in the argument (an array) sum to 0.

def two_sum_to_zero?(arr)
    i = 0
    while i < arr.length
        if arr[i] + arr[i + 1] == 0
            return true
        else 
            return false
        end
        i += 1
    end

end
# Another Soluation 

def two_sum_to_zero?(arr)
    i = 0
    while i < arr.length # outer loop
      num_one = arr[i]
      j = i + 1 # offset the inner counter by one so we 
      #don't count an element at the same position twice
      while j < arr.length # inner loop
        num_two = arr[j]
        if num_one + num_two == 0
          return true # our work here is done
        end
        j = j + 1
      end
      i = i + 1
    end
    # by now, we've checked every combination of elements
    # if we haven't returned true yet, then no two elements sum to 0
    false
  end


puts two_sum_to_zero?([1,-1])
puts two_sum_to_zero?([1,2,3,4])