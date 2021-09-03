lines = []
File.open("#{File.expand_path(Dir.pwd)}/data/votes.txt") do |file|
	lines = file.readlines
end

#votes = {}   # Create new hash
votes = Hash.new(0) # Create new hash with 0 as default

lines.each do |line|
	name = line.chomp.upcase!
# We don't need this ugly "if votes[name] != nil" any more!	
#	if votes[name] != nil
#   if votes[name]  # nil is "falsy"
		votes[name] += 1 # with default hash value we can omit if/else block
#	else
#		votes[name] = 1
#	end
end

votes.each do |key, value|
	puts "#{key}: #{value}"
end