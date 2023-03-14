=begin
loop do
  x = 42
  break
end

puts x  #raises an error because x is not in scope
=end

=begin
x = 42
loop do
  puts x
  x = 2
  break
end
puts x
=end

=begin
x = 0
while x < 5
  y = x * x
  x += 1
end

puts y 
=end

#=begin
def doubler(start)
  puts start
  if start <= 10 then doubler(start * 2) end
end 
doubler(1)
#=end