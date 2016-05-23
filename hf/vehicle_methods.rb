def accelerate
  puts "Stepping on the gas"
  puts "Speeding up"
end

def sound_horn
  puts "Pressing the horn button"
  puts "Beep beep!"
end

def use_headlights(brightness = "low-beam")
  puts "Turning on #{brightness} headlights"
  puts "Watch out for deer!"
end

def milege(miles_driven, gas_used)
  if gas_used
    return 0.0
  end
  miles_driven / gas_used # implicit return value
end

sound_horn
accelerate
use_headlights "hi-beam"
use_headlights
puts milege 400, 40 # output will be 10