=begin 
    Write a method factors_of(num) that takes in a num and returns an array of all
    positive numbers less than or equal to num that can divide num.
    * Essentially an integer(a) is a factor of another integer(b), 
      so long as (b) can be divided by (a) with reminder.*
=end

def factors_of(num)
    new_arr = []
    
    (1..num).each do |i|
        if num % i == 0
            new_arr << i
        end
    end
    return new_arr
end

print factors_of(3)   # => [1, 3]
puts
print factors_of(4)   # => [1, 2, 4]
puts
print factors_of(8)   # => [1, 2, 4, 8]
puts
print factors_of(9)   # => [1, 3, 9]
puts
print factors_of(16)  # => [1, 2, 4, 8, 16]