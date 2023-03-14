=begin
name = 'Somebody that i used to know'

def print_full_name(first_name, last_name)
  name = first_name + ' ' + last_name
  puts name
end

# first_name = gets.chomp
# last_name = gets.chomp
print_full_name 'Tommy', 'Ha'
=end 

# total = 0
# [1, 2, 3].each { |number| total += number}
# puts total

# scope.rb
# a = 5
# 3.times do |n|
#   a = 3
#   # b = 5
# end 
# # 3.times { |n| a = 3}
# puts a
# # puts b

arr = [1, 2, 3]
for i in arr do
  a = 5
end 
puts a
