=begin
    * .Select & .Map *
    Let’s suppose you are looking at a dictionary full of employee’s names, 
    job titles, and salaries. Let’s also imagine that you wanted to find out 
    the total amount that the company was spending on developers’ salaries. Now, 
    without using a single method in Ruby, you would most likely write your code 
    out something like this
=end

people = [
  {
    first_name: "Gary", 
    job_title: "car enthusiast", 
    salary: "14000" 
  },  
  {
    first_name: "Claire", 
    job_title: "developer", 
    salary: "15000"
  },  
  {
    first_name: "Clem", 
    job_title: "developer", 
    salary: "12000"
  }
]

person1 = people[0][:job_title]
person2 = people[1][:job_title]
person3 = people[2][:job_title]
total = 0
if person1 == "developer"
    total += people[0][:salary].to_i
end
if person2 == "developer"
    total += people[1][:salary].to_i
end
if person3 == "developer"
    total += people[2][:salary].to_i
end
puts total

=begin
 Now if you know a bit about loops, then the next easiest step would be to write an each
 method to put all the salaries together. This might only take up five or six lines. 
 but check this out!
=end
puts people.select{|x| x[:job_title] == "developer"}.map{|y| y[:salary].to_i}.reduce(:+)

=begin
    .select
    Let’s start with the .select method. We create a variable (x) and iterate over every method 
    in the people array. It then checks with a boolean expression if the key of (:job_title) is 
    equal to the “developer” string. If the boolean returns true, then the select method places 
    the hash that returned true into a new object.



    .map
    The map method is used for creating a new array that does not affect the array it is looping through.
    I used this method to create a new variable (y), and then used that variable to grab the value of the 
    key (:salary). Then, finally, I turned that value from a string into an integer.
=end

# .Reduce
# This one probably looks the most confusing so let's expand it a bit.

.reduce(0){|sum, indv| sum + indv} #is the same as .reduce(:+)

=begin
    The reduce method creates a new variable which you set the value equal to in the 
    first parentheses (0). You then create two new values (sum and indv) of which one 
    is the sum that you add the individual salaries to.
=end