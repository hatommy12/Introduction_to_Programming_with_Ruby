# 1 
=begin
Write down whether the following expressions return true or false. Then type the expressions into irb to see the results.

(32 * 4) >= 129   => false
false != !true    => false
true == 4         => false
false == (847 == '847')     => true
(!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false  => true
=end

# 2
=begin
Write a method that takes a string as an argument. 
The method should return a new, all-caps version of the string, only if the string is longer than 10 characters. 
Example: change "hello world" to "HELLO WORLD". (Hint: Ruby's String class has a few methods that would be helpful. Check the Ruby Docs!)
=end

def all_cap_len_is_10_or_less(string)
  string_length = string.length
  length_less_than_10 = (string_length <= 10) ? true : false
  return string.upcase if length_less_than_10
  string
end 

puts (all_cap_len_is_10_or_less("tommytommy"))

# 3
=begin
Write a program that takes a number from the user between 0 and 100 and reports back whether the number is between 0 and 50, 51 and 100, or above 100.
=end

## user_int = gets.chomp.to_i

# using if statements
# def estimate_number(int)
#   if int > 100
#     puts "above 100"
#   elsif int >= 51
#     puts "between 51 and 100"
#   elsif int >= 0
#     puts "between 0 and 50"
#   else
#     puts "negative number!"
#   end
# end
# estimate_number(user_int)

# using case statement
def estimate_number(int)
  answer = case
      when int < 0
        "#{int} negative number!"
      when int <= 50
        "#{int} between 0 and 50"
      when int <= 100
        "#{int} between 51 and 100"
      else
        "#{int} over 100!"
    end
  puts answer
end

#estimate_number(user_int)

# 4
=begin 
What will each block of code below print to the screen? Write your answer on a piece of paper or in a text editor and then run each block of code to see if you were correct.
=end

# Snippet 1 => FALSE
'4' == 4 ? puts("TRUE") : puts("FALSE") 

# Snippet 2 => "Did you get it right?"
x = 2
if ((x * 3) / 2) == (4 + 4 - x - 3)
  puts "Did you get it right?"
else
  puts "Did you?"
end

# Snippet 3 => "Alright now!"
y = 9
x = 10
if (x + 1) <= (y)
  puts "Alright."
elsif (x + 1) >= (y)
  puts "Alright now!"
elsif (y + 1) == x
  puts "ALRIGHT NOW!"
else
  puts "Alrighty!"
end

# 5
=begin
def equal_to_four(x)
  if x == 4
    puts "yup"
  else
    puts "nope"
end

equal_to_four(5)
=end 

# you get the error because you forgot an "end" on the if statement; compiler thinks theres no end on the method

# 6
=begin
(32 * 4) >= "129"  => raises an error
847 == '847'       => false
'847' < '846'      => false
'847' > '846'      => true
'847' > '8478'     => false
'847' < '8478'     => true
=end