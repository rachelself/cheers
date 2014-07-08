require 'date'

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

  puts "Hey #{name}, when is your birthday?"
  birthday = gets.chomp
  if birthday.empty?
    puts "You must give me your bday"
  else
    today = Date.today.yday
    bday = Date.parse("#{birthday}").yday
    # puts "Your bday is #{birthday}"
    # puts "today's yday: #{today}"
    # puts "bday's yday: #{bday}"

    if today == bday
      puts "Happy Birthday!"
    elsif today > bday
      diff = (365 - today) + bday
      puts "Your birthday is in #{diff} days. Happy Birthday in advance!"
    else
      diff = bday-today
      puts "Your birthday is in #{diff} days. Happy Birthday in advance!"
    end
  end
end



    # bday = Date.parse("#{birthday}")
    # puts "bday: #{bday}"
    # now = Date.today
    # puts "today: #{now}"

    # n = now.year
    # c = Date.new(n, bday.month, bday.day)
    # puts "compare date: #{c}"
    # # t = Date.new()
    # # puts "test date: #{t}"
    #
    # if c == bday
    #   puts "Happy Birthday!"
    # else
    #   diff = now - c
    #   puts "diff: #{diff}"
    # end

    # ydiff = now.year - bday.year
    # mdiff = now.month - bday.month
    # ddiff = now.day - bday.day

    # if ydiff > 0
    #   puts "diff: #{ydiff}"
    #   if mdiff == 0
    #     puts "mdiff: #{mdiff}"
    #     puts "It is your bday month!"
    #     if ddiff == 0
    #       puts "Happy Birthday!"
    #     else
    #       if ddiff == 1
    #         puts "Your birthday is tomorrow!"
    #       else
    #         puts "Your birthday is in #{ddiff} days"
    #   else
    #     puts "It is not yet your bday month"
    #     puts "mdiff: #{mdiff}"
    #     # mdays = mdiff * 3
    #
    # else
    #   puts "You are not old enough to have a birthday yet"



    # c = Date.new("#{bday}.month")


    # d = Date._strptime("#{birthday}", "%Y-%-m-%-d")
    # puts "bday: #{d}"
    # puts "date: #{bday}"
