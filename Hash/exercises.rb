# Hash Exercises

# 1
family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }
          
siblings = []
family.select do |keys, values| 
  if keys == :sisters || keys == :brothers
    siblings.push(values)
  end 
end 
  
puts siblings

# provided answer was more concise
=begin
siblings = family.select { |k,v| k == :sisters || k == :brothers}
immediate_family = siblings.values.flatten
puts immediate_family
=end

# I used select properly but gave up when I saw the dictionary. Didn't realize 
# I could've extracted values then combined the two list. 

# 2
a1 = {
  name: "Bob",
  money: "1,000,000 pesos"
}

b1 = {
  age: 18,
  money: "10,000 USD"
}

puts a1.merge(b1)
puts a1

a1.merge!(b1)
puts a1
puts b1


# 3
family.each_key { |k| print "#{k} " }
puts
family.each_value { |v| print "#{v} "}
puts
family.each { |k,v| print "#{k}: #{v} "}
puts

# 4
person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
puts person[:name]

# solution 2
puts person.fetch(:name)


# 5
# What method could you use to find out if a Hash contains a specific value in it? Write a program that verifies that the value is within the hash.

if person.value?(62)
  puts "Value was found"
else
  puts "value was not found"
end 


# 6
x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}
# difference in keys, first one uses a symbol :x while second is a string value of x ("hi there")


# 7
# b

