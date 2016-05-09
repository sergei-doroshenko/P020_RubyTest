class ArrayUtil
  attr_accessor :data

  def initialize(data)
    self.data = data
  end

  def iterate_1(&block)
    index = 0
    while index < @data.length
      block.call(@data[index])
      index += 1
    end
  end

  def iterate_2
    index = 0
    while index < @data.length
      yield @data[index] # calls code block
      index += 1
    end
  end

end

a = ArrayUtil.new(["a", "b", "c"])

a.iterate_1 do | message |
  puts "iterate_1: #{message}"
end

a.iterate_1 {|msg| puts "iterate_1: new #{msg}"}

a.iterate_2 {|msg| puts "iterate_2: #{msg}"}

["x", "y", "z"].each { |param| puts param }