# perform_again.rb

loop do
  puts "Do you want to do that again?"
  answer = gets.chomp
  if answer.upcase != "Y" then break end
end