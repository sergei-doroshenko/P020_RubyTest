class Mage
	# getters and setters
	attr_accessor :name, :spell
	
	# constructor
	def initialize(name, spell)
		@name = name
		@spell = spell
	end
	
	def enchant(target)
		puts "#{@name} casts #{@spell} on #{target.name}!"
	end
end