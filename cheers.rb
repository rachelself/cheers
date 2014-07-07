puts "What is your name?"
name = gets.chomp
if name.empty?
  puts "You must enter your name"
else
  puts "Your name is #{name}"

  name = name.upcase
  name.each_char do |char|
    if char == "A" || char == "E" || char == "I" || char == "O" || char == "U"
      puts "Give me an... #{char}"
    else
      puts "Give me a... #{char}"
    end
  end

  puts "#{name}\'s just GRAND"

end
