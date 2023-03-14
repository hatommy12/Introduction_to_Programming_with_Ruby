def test(b)
  b.map! {|letter| "I like the letter: #{letter}"}
end 

a = ['a', 'b', 'c']
puts test(a)
puts a

def top
  bottom
end

def bottom
  puts "Reached the bottom"
end

top