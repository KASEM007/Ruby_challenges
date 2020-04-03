=begin 
    prime Number
    Write a method prime? that takes in a number and returns a boolean, 
    indicating whether the number is prime. 
    "A prime number is only divisible by 1 and itself."
=end

def prime?(num)
    if num < 2  # * "fact" any number less than 2 is not a prime number *
        return false
    end
    (2...num).each do |i|
        if num % i == 0
            return false
        end
    end 
    return true          
end
puts prime?(2)  #=> true
puts prime?(5)  #=> true
puts prime?(11) #=> true
puts prime?(4)  #=> false
puts prime?(9)  #=> false
puts prime?(-5) #=> false