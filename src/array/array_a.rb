class ArrayA
	attr_accessor :data
	
	def initialize(data)
		self.data = data
	end
	
	def find_all
		matching_items = []
		self.data.each do |item|
			if yield(item)             # wait for boolean result
				matching_items << item
			end
		end
		matching_items
	end
	
	def reject
		kept_items = []
		self.data.each do |item|
			unless yield(item)         # wait for boolean result
				kept_items << item
			end
		end
		kept_items                     # return results
	end
	
	def map
		results = []                  # make a new array to hold block return value
		self.data.each do |item|      # loop through each element
			results << yield(item)    # pass the element to the block and add return value to the new array
		end
		results                       # return the array of block return values
	end
end

a1 = ArrayA.new([10, 20, 30, 100, 300, 400])

r1 = a1.reject { |item| item > 100 }
print r1
print "\n"
r2 = a1.find_all { |item| item > 100 }
print r2
print "\n"
r3 = a1.map { |item| item * 2.5 }
print r3
