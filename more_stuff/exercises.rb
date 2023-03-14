# exercises for More Stuff

# 1
def check_lab(string)
  puts string if /lab/.match(string)
end 

test_strings_array = ['laboratory', 'experiment', 'Pans Labyrinth', 'elaborate', 'polar bear']

test_strings_array.each do |string|
  check_lab(string.downcase)
end

# solution 2 with proc

def check_lab(array, proc)
  array.each { |string| proc.call(string)}
end

lab_proc = Proc.new do |string|
  puts string if string.downcase =~ /lab/
end

check_lab(test_strings_array, lab_proc)

# 2
def execute(&block)
  block
end

execute { puts "Hello from inside the execute method!" }

# nothing is printed because block wasn't called with the .call method, but it 
# will implicitly return a block (proc object)

# 3
# when given errors to the code, you can tell the program how to handle them
# perhaps log the error or provide some context
# this also allows the program to continue despite any errors 

# 4
def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }


# 5
def execute(block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

#error starting from main line 54 running method execute
#no arguments were given when it was requesting for 1
# we provided block, but when defining method we forgot the & before the block argument
