=begin
    Write a method that will count how many numbers from 1 - 100
    are evenly divisble by i.
=end
# i = 1
# j = 1
# while i < 6
#     count = 0
#     while j < 101
#         count += 1 if j % i == 0
#         j += 1
#         j = 1
#     end
#     puts "There are " + count.to_s + "numbers evenly divisible by " +
#     i. to_s + "from 1 to 100"
# end
i = 1 # we'll count how many numbers from 1-100 are evenly divisble by i
j = 1
while i < 6
  count = 0
  while j < 101
    # increment count of test numbers
    if j % i == 0
        count += 1  # increment count if j is evenly divisible by i
    end
    j += 1 # increment j to check next number up to 100
  end
  j = 1 # reset j so j < 101 is true for the next iteration
  puts "There are " + count.to_s + " numbers evenly divisible by " + i.to_s +  " from 1 to 100."
  #puts" There are #{count} numbers evenly divisible by #{i} from 1 to 100."
  i += 1 # increment i to check next number up to 5
  
end