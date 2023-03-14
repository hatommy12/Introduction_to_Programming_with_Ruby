# next_loop.rb

i = 0
loop do
  i = i + 2
  if i == 4 then next end
  puts i
  break if i == 10
end