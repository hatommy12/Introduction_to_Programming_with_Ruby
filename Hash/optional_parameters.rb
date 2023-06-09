# optional_parameters.rb

def greeting(name, options = {})
  if options.empty?
    puts "Hi, my name is #{name}"
  else
    puts "Hi, my name is #{name} and I'm #{options[:age]} years old" +
          " and I live in #{options[:city]}."
  end 
end 

greeting("bob")
greeting("tommy", {age: 62, city: "New York City Baby"})
greeting("Bob", age: 62, city: "NYC")