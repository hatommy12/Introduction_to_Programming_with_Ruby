# true ? "this is true" : "this is not true"

# # Ternary Expression 
# (5 > 4) ? (puts "5 is greater than 4") : (puts "5 is less than 4")
# # shouldn't be used to choose two actions like above, should only be used for values

# hitchhiker = true
# foo = hitchhiker ? 42 : 3.1415
# puts (hitchhiker ? 42 : 3.1415)
# # return hitchhiker ? 42 : 3.1415

# # don't use ternary expressions with actions because it can be confusing, not good for readibility

# expression = ((3129038132 > 2) || (13223 == 1))
# puts (expression ? 5 : 6)

# ct = 31.34
# results = case
#   when ct > 38
#     "negative for covid"
#   when ct > 35
#     "results is borderline, please retest."
#   when ct > 15
#     "Positive for covid"
#   else
#     "Results is unconclusive, please re-test and have a specialist look"
#   end 
  
# puts results

# a = "false"
# if a
#   puts "how can this be true"
# else
#   puts "it is not true"
# end

foo = nil
bar = 'qux'
isOk = foo || bar

# isOk = (foo || bar) ? true : false
# puts isOk

if (foo || bar)
  isOk = true
else
  isOk = false
end
puts isOk