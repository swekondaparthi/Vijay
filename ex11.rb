filename= ARGV.first

txt=open(filename)

puts "here is your file #{filename}:"

print txt.read

print "type file name again:"
file_again = $stdin.gets.chomp

txt_again = open(file_again)

print txt_again.read