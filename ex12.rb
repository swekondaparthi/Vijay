filename=ARGV.first

puts "we are going to erase #{filename}"

puts "if you don't want that, hit CTRL-C (^C)."
puts "if you do want that,hit RETURN."

$stdin.gets 

puts "Opening the file..."
target=open(filename, 'w')

puts "Truncating the file. Goodbye!"

target.truncate(0)
puts "now am going to ask you three lines."

print "line 1:"
line1= $stdin.gets.chomp
print "line 2:"
line2= $stdin.gets.chomp
print "line 3:"
line3= $stdin.gets.chomp

puts "I am going to write these to the file."

target.write(line1)
target.write("\n")
target.write(line2)
target.write("\n")
target.write(line3)
target.write("\n")
