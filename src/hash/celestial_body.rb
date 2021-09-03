class CelestialBody
    attr_accessor :type, :name
end

bodies = Hash.new do |hash, key| # Receive a reference to the hash and the current key.
    body = CelestialBody.new     # Create a new object just for current key.
    body.type = "planet"
    hash[key] = body             # Assign to the hash AND return the new value.
end

bodies['Mars'].name = 'Mars'
bodies['Europa'].name = 'Europa'
bodies['Europa'].type = 'moon'
bodies['Venus'].name = 'Venus'

p bodies
