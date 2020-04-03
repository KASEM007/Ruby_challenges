=begin 
Write a method fizz_buzz_numbers that takes in a max number and 
return an array containing all positive numbers less than max
that are divisible by 2 or 7 but not both
=end

def fizz_buzz_numbers(max)
    i = 0
    arr = []
    while i < max
        if (i % 2 == 0 && i % 7 != 0) || (i % 2 != 0 && i % 7 == 0)
           arr << i
        end
        i += 1
    end
    return arr
end

#print fizz_buzz_numbers (20)
#puts "----"
#print fizz_buzz_numbers (10)

############################## Another way to solve it ########################

def fizzBuzz(max)
    arr = []
    (1...max).each do |num|

        if num % 3 == 0 && num % 5 != 0
            arr << num
        end
        if num % 3 != 0 && num % 5 == 0
            arr << num
        end
    end
    return arr
end
print fizzBuzz(30)
puts ""
print fizzBuzz(25)