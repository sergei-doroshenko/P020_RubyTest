class Dog
# Sets up "name" and "age" attribute reader methods		
  attr_reader :name, :age
		
	def name=(value)
		if value == ""
			raise "Name can't be blank!"
		end
        @name = value
	end	
    
    def age=(value)
        if value < 0
            raise "An age of #{value} isn't valid!"
        end
    end
    
  def talk
    puts "#{@name} Bark!"
  end

  def move(destination)
    puts "#{@name} is running to the #{destination}."
  end

  def report_age
    puts "#{@name} of #{@age} age."
  end

end

fido = Dog.new
fido.name = "Fido"
fido.age = 3
fido.report_age
fido.talk

rex = Dog.new
rex.name= "Rex"
rex.age = -1
rex.talk
rex.move "food bowl"
rex.report_age