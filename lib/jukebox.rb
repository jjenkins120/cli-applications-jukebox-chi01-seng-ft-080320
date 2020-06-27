require "pry"

def say_hello(name)
  "Hi #{name}!"
end

puts "Enter your name:"
user_name = gets.strip

puts say_hello(user_name)

binding.pry