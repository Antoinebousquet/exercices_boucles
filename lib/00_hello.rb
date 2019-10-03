# def say_hello
#  puts "Hello"
# end

# say_hello

# 2.1.2 

# def say_hello (first_name = "")
#   puts "Bonjour, " + first_name + " !"
# end

# say_hello()

# 2.1.3 


def ask_first_name
	puts "Quel est ton prénom ?"
	return gets.chomp.capitalize()
end	

def say_hello (first_name)
  puts "Bonjour, " + first_name + " !"
end

def say_hello_custom
	say_hello(ask_first_name)
end

say_hello_custom
