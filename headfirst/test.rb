def take_this
  yield "present"
end

take_this { |thing| puts "brackets block got #{thing}" }

# here we define method, which calls block
def run_block
  yield
end

# calls method and pass block as parameter: do -- end
run_block do
  puts "do/end"
end