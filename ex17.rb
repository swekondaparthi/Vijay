def add(a,b)
    puts "ASSING #{a}+#{b}"
    return a+b
end

def subtract(a,b)
    puts "SUBSTRCTING #{a} -#{b}"
    return a-b
end

def multiply(a,b)
    puts "MULTIPLYING #{a} * #{b}"
    return a*b
end

def divide(a,b)
    puts "DIVIDING #{a} / #{b}"
    return a/b
end

puts "lets do maths with functions!"

    age =add(30,5)
    height = subtract(78,4)
    weight = multiply(90,2)
    iq=divide(100,2)
    puts "Age; #{age}, height: #{height},Weight:#{weight},IQ:#{iq}"
