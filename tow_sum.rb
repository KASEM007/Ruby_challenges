# Write a method that takes an array of numbers. If a pair of numbers
# in the array sums to zero, return the positions of those two numbers.
# If no pair of numbers sums to zero, return `nil`.
#
# Difficulty: medium.

def two_sum(nums)
  new_arr = []
  i = 0
  while i < nums.length - 1
    num1 = nums[i]
    num2 = num1 + 1
    while num2 < nums.length
      sum = num1 + num2
      if num1 + num2 == 0
        new_arr.push(num1, num2)
      end
      num2 += 1
    end
    i += 1
  end
  return new_arr 
end

p two_sum([1, 3, 5, -3]) #==> [1, 3]