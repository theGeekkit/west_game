
require "./text_style.rb"
require "./map.rb"
require "./character.rb"
require "./random_name_class.rb"
require "./game_mechanics.rb"
require "./auth.rb"

def intro
  puts
  slow_text do
    'You find yourself in the middle of a worn road in the Dustlands.'
  end
  puts
  puts
  slow_text do
    'In the distance, you can see a town with multiple saloons, various standard buildings'
  end
  slow_text do
    "found in any town, fortress like bank, and a sheriff's office."
  end
  puts
  slow_text do
    'As you approach the town, you feel the tension in the air as you notice bullet holes'
  end
  slow_text do
    'and various other signs of countless shoot outs.'
  end
  puts
  puts
  slow_text do
    'You can hear the sound of gunshots and the occasional shouting.'
  end
  puts
  puts
  slow_text do
    'You realize that this is a dangerous place and that you have to be careful.'
  end
  puts
  slow_text do
    'You also realize that you have a mission to accomplish, and that you will have to fight to achieve it.'
  end
  puts
  puts
  slow_text do
    'Welcome to the Wild West, stranger.'
  end
end

intro

puts <<~'BIG_TEXT'

  █████████████████████████████████████████████████████████████████████
  █▄─▄─▀██▀▄─██▄─▄▄▀███▄─▀█▀─▄█▄─▄▄─█▄─▄▄▀█▄─▄█─▄▄▄─█▄─▄█▄─▀█▄─▄█▄─▄▄─█
  ██─▄─▀██─▀─███─██─████─█▄█─███─▄█▀██─██─██─██─███▀██─███─█▄▀─███─▄█▀█
  ▀▄▄▄▄▀▀▄▄▀▄▄▀▄▄▄▄▀▀▀▀▄▄▄▀▄▄▄▀▄▄▄▄▄▀▄▄▄▄▀▀▄▄▄▀▄▄▄▄▄▀▄▄▄▀▄▄▄▀▀▄▄▀▄▄▄▄▄▀
BIG_TEXT

puts
puts
slow_text do
  'Bad Medicine is a simple text-based game built in'. + ' Ruby'.red + ' by Heath Falkenrath'.blue
end

slow_text do
  'Find my other crazy projects on Github @theGeekkit'.cyan
end
puts
puts

sleep 1

$current_game = Game.new($current_character)
$map = Map.new
#   map.generate_map
  $map.set_character_location(5)
