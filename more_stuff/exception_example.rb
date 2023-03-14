# exception_example.rb

begin
  # perform some dangerous operation
rescue
  # do this if operation fails
  # for example, logging error
end 


names = ['bob', 'joe', 'steve', nil, 'frank']

names.each do |name|
  begin
    puts "#{name}'s name has #{name.length} letters in it."
  rescue
    puts "something went wrong!"
  end
end

