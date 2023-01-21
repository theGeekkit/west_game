require "./slow_text.rb"
require "./character.rb"
require "./enemy.rb"

class Game

  def initialize(cur_character)
    @current_character = cur_character
    @current_map = nil
    @combat_mode = false
  end

  def combat_game
    @combat_mode = true
    while @current_character.get_status == true && @combat_mode == true
      enemy = Enemy.new(@current_character)


      puts
      puts
      puts "Oh no! You spot a level #{enemy.get_level} #{enemy.get_name}!".red
      sleep 2
      puts "Fight! Fight! Fight!".green


      while enemy.get_alive? == true
      
      

      puts

      sleep 1

      #Enemy Atk

      puts "#{enemy.get_name} attacks you for #{enemy.get_atk}!".red.bold
      @current_character.change_hp(enemy.get_atk, "loss")
      break if @current_character.get_status == false
      puts  
      sleep 1
      puts "Are you going to let them get away with that??"
      puts "Enter something to yell as you shoot!"
      print "> ".green
      player_words = gets.chomp

      #player Atk

      puts "You shout \"#{player_words}!\" as you attack #{enemy.get_name} with your #{@current_character.get_weapon} for #{@current_character.get_atk}!".red.italic
      enemy.remove_hp(@current_character.get_atk)
      break if enemy.get_alive? == false
      sleep 1

      #Enemy Status
      puts  "#{enemy.get_name} has #{enemy.get_hp} HP left."

      #player status
      puts "You have #{@current_character.get_hp} HP left."
      end
      sleep 1
      if @current_character.get_status == true
        puts
        puts "You have beaten #{enemy.get_name}!"
        @current_character.add_exp(enemy.get_worth_exp)
        @current_character.set_gold(enemy.get_gold, true)
        puts
        puts "You got #{enemy.get_worth_exp} EXP!".green
        puts "You are level #{@current_character.get_level}"
        puts "#{@current_character.get_exp_to_level} to the next level!"
        puts
        puts "You got #{enemy.get_gold} gold!".yellow
        puts "You have #{@current_character.get_gold} gold!".yellow
        sleep 2
        break
      end


    end
    puts

    if @current_character.get_status == false
      game_over
    else
      $map.defeat_enemy
      $map.return_to_menu
    end

   
  end

  def game_over
    puts <<-'BIG_TEXT'



    ░█──░█ █▀▀█ █──█ 　 ░█▀▀▄ ─▀─ █▀▀ █▀▀▄ 
    ░█▄▄▄█ █──█ █──█ 　 ░█─░█ ▀█▀ █▀▀ █──█ 
    ──░█── ▀▀▀▀ ─▀▀▀ 　 ░█▄▄▀ ▀▀▀ ▀▀▀ ▀▀▀─
                                                   
    
    BIG_TEXT

    puts
    puts "Well, the Bone Orchard keeps growing".red
    puts
    sleep 2
    puts "Wanna try again?".green
    puts "You'll keep your level and items but I'm taking all #{$current_character.get_gold} of your gold.".green
    puts "Y/N?".yellow
    print "> ".green
    input = gets.chomp
    if input.downcase == "y" || input.downcase == "yes"
      $current_character.revive
      start_game
    else
      puts
      sleep 1
      puts <<-'BIG_TEXT'

      _____ _                 _           __            
      |_   _| |__   __ _ _ __ | | _____   / _| ___  _ __ 
        | | | '_ \ / _` | '_ \| |/ / __| | |_ / _ \| '__|
        | | | | | | (_| | | | |   <\__ \ |  _| (_) | |   
        |_| |_| |_|\__,_|_| |_|_|\_\___/ |_|  \___/|_|   
                                                         
             _             _             _ 
       _ __ | | __ _ _   _(_)_ __   __ _| |
      | '_ \| |/ _` | | | | | '_ \ / _` | |
      | |_) | | (_| | |_| | | | | | (_| |_|
      | .__/|_|\__,_|\__, |_|_| |_|\__, (_)
      |_|            |___/         |___/   


      BIG_TEXT


      puts
      puts 
      slow_text do
        "Your love is like bad medicine
      Bad medicine is what I need".red
      end
      slow_text do             
        "Oh, oh, oh, shake it up, just like bad medicine
      You got the potion that can cure my disease".red
        end
      puts
    end
  end

 def start_game
  combat_game
end

def set_character(character)
    @current_character = character
end

end
