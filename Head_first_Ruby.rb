# puts "Welcome to my guessing game!"
# print " What's your name? "
# name = gets.chomp()
# #puts "Welcome #{name}!" 
# puts "Welcome, " + name + "!"
# puts "I have a number between 1 to a 100 can you guess it ?"
# puts "make a guess: "
# target = rand(100) + 1
# num_of_guesses = 0
# guess = gets.chomp()
def my_lcm(int_one, int_two)
    # your code goes here
    answer = int_one.lcm(int_two)
    return answer
  end
  print my_lcm(9, 3)
