#Get My Number Game
#Written by Sergei

puts "Welcome to 'Get My Number!'"

print "What's your name? "

input = gets
#puts input.inspect
#p input
name = input.chomp
puts "Welcome, #{name}!"

# Store a random number for the player to guess.
puts "I've got a random number between 1 and 100."
puts "Can you guess it?"
target = rand(100) + 1

num_guesses = 0

# Track whether the player has guessed correctly.
guessed_it = false

#while num_guesses < 10 && guessed_it == false
until num_guesses == 10 || guessed_it
	remaining_guesses = 10 - num_guesses
	#puts remaining_guesses.to_s + " guesses left."
	puts "You've got #{remaining_guesses} guesses left..."
	print "Make a guess: "
	guess = gets.to_i
	num_guesses += 1
	
	if guess < target
		puts "Oops. Your guess was LOW."
	elsif guess > target
		puts "Ooops. Your guess was HIGH."
	else guess == target
		puts "Good job, #{name}!"
		puts "You guess my number in #{num_guesses} guesses!"
		guessed_it = true
	end
end

# If player ran out of turns, tell them what the number was.
unless guessed_it
	puts "Sorry. You didn't get my number. (It was #{target}.)"
end