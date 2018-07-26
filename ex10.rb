user_name = ARGV.first # gets the first argument 

prompt = '>'

puts "Hi #{user_name}"

puts "I would like to ask you few qs"

puts "do you like me #{user_name}"

puts prompt 
likes = $stdin.gets.chomp

puts "where do you live #{user_name}"

    puts prompt

    lives = $stdin.gets.chomp

 puts "what kind of laptop u use " , prompt 
 laptop = $stdin.gets.chomp   

 puts """
 so u told #{likes}
 u live in #{lives}
 ur laptop #{laptop}
"""