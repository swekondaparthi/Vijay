def print_two(*args)
    arg1, arg2 = args
    puts "arg1: #{arg1},arg2: #{arg2}"
    
end

def print_two_again(arg1,arg2)

    puts "arg1: #{arg1}, arg2:#{arg2}"

end

def print_none()
    puts "I got nothing."
end

def cheese_and_cake(cheese_count,boxes_of_cake)

    puts "u have #{cheese_count} cheeses !"
    puts "u have #{boxes_of_cake} boxes of cake"
    puts "Man thats enoug for party"
    puts "get rest.\n"
end


puts "OR, we can use variables from script:"

amount_of_cheese=5
amount_of_cake=5
cheese_and_cake(amount_of_cheese,amount_of_cake)

puts "v can do math inside too:"
    cheese_and_cake(5+5,5+6)

