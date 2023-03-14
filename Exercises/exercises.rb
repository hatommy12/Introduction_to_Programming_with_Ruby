# 1
# Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
array.each { |num| print "#{num} "}
puts 

# 2
new_array = array.select { |num| num > 5}
new_array.each do |num|
  puts num
end 

# 3
odd_array = new_array.select { |num| num.odd?}
p odd_array

# 4
array.push(11) # array << 11 works too
array.unshift(0)
p array

# 5
array.delete_at(-1)
# array.pop
array << 3
p array

# 6
array.uniq!
p array

# 7
# array is a list with indexed objects, a hash isn't indexed and uses a key-value

# 8
hash = {
  name: "Tommy"
}

old_hash = {
  :age => 25
}

# 9

h = {
  a: 1,
  b: 2,
  c: 3,
  d: 4
}

puts h[:b]
h[:e] = 5
puts h

h.delete_if { |key, value| value < 3.5}
p h

# 10
# hash values can be arrays, and you can have an array of hashes
hash_with_array = {
  array: [1, 2, 3]
}

hash_array = [{age: 2, name: 'bob'}]

p hash_with_array
p hash_array

# 11
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts["Joe Smith"] = {
  email: contact_data[0][0],
  address: contact_data[0][1],
  number: contact_data[0][2]
}

contacts["Sally Johnson"] = {
  email: contact_data[1][0],
  address: contact_data[1][1],
  number: contact_data[1][2]
}

p contacts

# Expected output:
#  {
#    "Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
#    "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.",  :phone=>"123-234-3454"}
#  }



# 12

# Joe's Email
p contacts["Joe Smith"][:email]
# Sally's Number
p contacts["Sally Johnson"][:number]


# 13
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if { |string| string.start_with?('s', 'w')}
p arr


# 14
a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
     
a.map! do |string|
  string.split(' ')
end
a.flatten!
p a


# 15
hash1 = {
  shoes: "nike", 
  "hat" => "adidas",
  :hoodie => true
}
hash2 = {
  "hat" => "adidas",
  :shoes => "nike",
  hoodie: true
}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end

# hashes are the same? only difference is between the style



# 16

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
contact_template = [:email, :address, :phone]

# my solution
contacts.each_key do |key|
  contact_data.delete_at(0) if contact_data.first.empty?
  contact_template.each do |personal_information|
    contacts[key][personal_information] = contact_data[0].shift    
  end
end
  
p contacts


# provided Solution
# i initially had a similiar solution but I couldn't find a method for hashes
# that provided indexes... it was mentioned in the lessons tho
=begin
contacts.each_with_index do |(name, hash), index|
  contact_template.each do |personal_information|
    hash[personal_information] = contact_data[index].shift
  end
end

p contacts
=end
