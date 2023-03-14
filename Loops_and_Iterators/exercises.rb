# exercises.rb

# 1
# returns 1, 2, 3, 4, 5

# 2
# while true
#   puts "How are you?"
#   input = gets.chomp
#   puts "Type 'STOP' to end loop"
#   break if input == "STOP"
# end 

# 3
def countdown(n)
  if n == 0
    puts n
  else
    puts n
    countdown(n - 1)
  end
end

countdown(5)