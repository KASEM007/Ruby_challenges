# EASY

# Write a method that returns a boolean indicating whether an array is in sorted order. 
#Use the equality operator (==), which returns a boolean indicating whether its operands 
#are equal, e.g., 2 == 2 => true, ["cat", "dog"] == ["dog", "cat"] => false
def in_order?(arr)
    # your code goes here
    arr == arr.sort
    
  end
  
  
  # MEDIUM
  
  # Write a method that returns the range of its argument (an array of integers).
  def range(arr)
    # your code goes here
    #find max of array
    #fins min of array
    # return different between max and min
    max = arr.sort[-1]
    min = arr.sort[0]
    max - min
  end
  
  
  # HARD 
  
  # Write a method that returns an array of the digits of a non-negative integer 
  #in descending order and as strings, e.g., descending_digits(4291) #=> ["9", "4", "2", "1"]
  def descending_digits(int)
    # convert int to a str
    # split string into characters
    # sort array resulting form our split
    # reverse the order
    int.to_s.split("").sort.reverse
    
  end
  
  # Write a method that converts an array of ten integers into a phone number 
  #in the format "(123) 456-7890".
  def to_phone_number(arr)
    # your code goes here
    code = arr[0...3].join
    first_part = arr[3..5].join
    second_part = arr[5..-1].join
    phone_N = "(" + code + ")" + "-" + first_part + "-" + second_part + "."
  end
  p to_phone_number ([6, 2, 6, 2, 7, 2, 1, 0, 8, 9])
  
  # Write a method that returns the range of a string of comma-separated integers, e.g., str_range("4,1,8") #=> 7
  def str_range(str)
    # your code goes here
    # convert str into array of characters that represent integers
    arr = str.split(",")
    arr = arr.sort
    arr[-1].to_i - arr[0].to_i
  end
  
  
 