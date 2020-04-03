=begin 
    Write a method unique_elements that takes in an array and returns a new array
    where all duplicate elements are removed. Solve this using a hash.
=end
def unique_elements(arr)
   new=Hash.new(0)
   arr.each {|ele| new[ele] += 1}
   return new.keys
end
print unique_elements(['a', 'b', 'a', 'a', 'b', 'c']) #=> ["a", "b", "c"]
puts