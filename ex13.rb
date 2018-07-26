from_file, to_file = ARGV

puts "Copying from #{from_file} to #{to_file}"

# we could dp these changes 
in_file=open(from_file)
indata=in_file.read

puts "input file is #{indata.length} bytes long"

puts "Does the output file exists ? #{File.exists?(to_file)}"
puts "Ready,hit RETURN to continue, CTRL-C to abort."
$stdin.gets

out_file=open(to_file,'w')
out_file.write(indata)

puts "All done"
out_file.close 
in_file.close