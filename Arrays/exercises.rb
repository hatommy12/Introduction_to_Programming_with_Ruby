# Array Exercises

# 1
arr = [1, 3, 5, 7, 9, 11]
number = 3

# first answer
puts arr.include?(number)

# second answer
def is_num_in_array(array, num)
  
  array.each do |i|
    return puts "num is in array!" if i == num
  end
  puts "num is NOT in array :("
end 

is_num_in_array(arr, number)


# 2
#1. [["b", 1], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]] 
# [["b"], ["a", 1], ["b", 2], ["a", 2], ["b", 3], ["a", 3]]

#2.[["b", [1, 2, 3]], ["a", [1, 2, 3]]]
# [["b"], ["a", [1, 2, 3]]]

# 3
# arr[1][0]
#arr.last.first works too

# 4
#1. 3
#2. error undefined method `[]'
#3. 8

# 5
# a = e
# b = A
# c = nil

# 6
# names[index]; the arguement is an integer but was provided a string. to change margaret, should used 3 instead of string

# 7
array = ["Tommy", "Alec", "Klam", "tigran", "Wesley", "Jaewon"]

array.each_with_index do |val, idx|
  print "#{idx}.#{val} "
end

puts ""
# 8

list = [1, 5, 8, 2, 10, 9]
list.sort!
list_2 = list.map { |num| num + 2}
print list
print list_2
puts ""