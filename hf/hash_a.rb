letters = ['a', 'c', 'a', 'b', 'c', 'a']

counts = Hash.new(0)     # Good usage of number as default hash value, because number is immutable.

letters.each do |letter|
    counts[letter] += 1  # Assign the incremented value back to the hash.
end

p counts