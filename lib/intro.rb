
require './text_style.rb'

def intro
    puts 
    slow_text do
        "You find yourself in the middle of a dusty road in the Dustlands."
    end
    puts "In the distance, you can see a town with multiple saloons, various standard buildings found in any town, fortress like bank, and a sheriff's office."
    puts 
    slow_text do
    "As you approach the town, you feel the tension in the air as you notice bullet holes and various other signs of countless shoot outs."
    end
    puts
    puts "You can hear the sound of gunshots and the occasional shouting."   
    puts "You realize that this is a dangerous place and that you have to be careful."
    puts 
    slow_text do
        "You also realize that you have a mission to accomplish, and that you will have to fight to achieve it."
    end        
    puts 
    slow_text do
        "Welcome to the Wild West, stranger."
    end

end



    intro


  puts <<-'BIG_TEXT'
  
█████████████████████████████████████████████████████████████████████
█▄─▄─▀██▀▄─██▄─▄▄▀███▄─▀█▀─▄█▄─▄▄─█▄─▄▄▀█▄─▄█─▄▄▄─█▄─▄█▄─▀█▄─▄█▄─▄▄─█
██─▄─▀██─▀─███─██─████─█▄█─███─▄█▀██─██─██─██─███▀██─███─█▄▀─███─▄█▀█
▀▄▄▄▄▀▀▄▄▀▄▄▀▄▄▄▄▀▀▀▀▄▄▄▀▄▄▄▀▄▄▄▄▄▀▄▄▄▄▀▀▄▄▄▀▄▄▄▄▄▀▄▄▄▀▄▄▄▀▀▄▄▀▄▄▄▄▄▀
BIG_TEXT

puts
puts
slow_text do
    "Bad Medicine is simple text-based game built in" + " Ruby".red
end

slow_text do
    "Find my other crazy projects on Github @theGekkit".cyan
end