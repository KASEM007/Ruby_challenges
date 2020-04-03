=begin

    Guessing Game!

    1- prompt the player to enter their name. Use their name to print a greeting.
    2- Generate a random number from 1 to 100, and sort it as a target numbr for 
        the player to guess.
    3- Keep track of how many guesses the player has made. Before each guess, 
        let them know how many guesses(out of 10 they have left)
    4- Prompt the player to make a guess as to what the target number is
    5- If the player's guess is less than the target number, say "Oops. 
        Your guess was LOW." if the player guess is grater
        than the target number, say, "Oops. Your guess was HIGH."
    6- If the player's guess is equal to the target number, tell them, 
        "Good job, [name]! 
        You did guess my number in [number of guesses]guesses!"
    7-If the player runs out of turns without guessing correctly, say, 
        "Sorry.You didn't get my number. MY number was [target]."
    8- Keep allowing the player to guess untill they get it right or run out of turns. 

=end

puts "Welcome to my Guessing Game!"
print "What's your name? "
name = gets.chomp()
puts "Welcome, #{name}!"
puts "I've got a random number between 1 to 100."
puts "can you guess it?"
target = rand(100) + 1
num_guesses = 0
guessed_it = false

while num_guesses < 10 && guessed_it == false
#until num_guesses == 10 || guessed_it
    puts "You have got #{10 - num_guesses} guesses left."
    print "Make a guess: "
    guess = gets.to_i
    num_guesses += 1
    if guess < target
        puts "Oops. Your guess was low."
    elsif guess > target
        puts "Oops. Your guess was HIGH."
    elsif guess == target
        puts "Great Job, #{name}!"
        puts "You guessed my number in #{num_guesses} guesses!"
        guessed_it = true
    end
end
unless guessed_it
    puts "Sorry. You didn't get my number. (It was #{target}.)"
end

################################################################
###############################################################
=begin
    puts "Welcome to 'Get My Number!'"

    # Get the player's name, and greet them.
    print "What's your name? "
    input = gets
    name = input.chomp
    puts "Welcome, #{name}!"

    # Store a random number for the player to guess.
    puts "I've got a random number between 1 and 100."
    puts "Can you guess it?"
    target = rand(100) + 1

    # Track how many guesses the player has made.
    num_guesses = 0

    # Track whether the player has guessed correctly.
    guessed_it = false

    until num_guesses == 10 || guessed_it

    puts "You've got #{10 - num_guesses} guesses left."
    print "Make a guess: "
    guess = gets.to_i

    num_guesses += 1

    # Compare the guess to the target.
    # Print the appropriate message.
    if guess < target
        puts "Oops. Your guess was LOW."
    elsif guess > target
        puts "Oops. Your guess was HIGH."
    elsif guess == target
        puts "Good job, #{name}!"
        puts "You guessed my number in #{num_guesses} guesses!"
        guessed_it = true
    end

    end

    # If the player didn't guess in time, show the target number.
    unless guessed_it
    puts "Sorry. You didn't get my number. (It was #{target}.)"
    end
=end 