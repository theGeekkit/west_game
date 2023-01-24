require_relative "./location.rb"
require_relative "./text_style.rb"

module Menu
  @@location = nil
  @@input_tester = false

  def self.run(location)
    @@input_tester = false
    @@location = location
    while @@input_tester == false
      puts "What do you wanna do?"
      puts "1. Move"
      if location.enemy_check == true && location.shop == false
        puts "2. Shoot".red
        puts "3. Check Inventory"
      elsif location.shop == true
        puts "2. Shop".blue
        puts "3. Check Inventory"
      else
        puts "2. Check Inventory"
      end
      puts
      print "> ".green
      user_selection = gets.chomp
      user_selection = test_input(user_selection, location)
      if @@input_tester == false
        puts
        puts "Get back on that horse!".yellow.italic
        puts
      end
    end

    if user_selection == 1
      move
    elsif user_selection == 2 && location.enemy_check == true && location.shop == false
      fight
    elsif user_selection == 2 && location.shop == true
      shop
    elsif user_selection == 2 || user_selection == 3
      check_inventory
    end
  end

  def self.test_input(input, location)
    if input.to_i > 3 || input.to_i < 1
      @@input_tester = false
      return ""

    else
      @@input_tester = true
      return input.to_i
    end
  end

  def self.move
    $map.move
  end

  def self.fight
    $current_game.combat_game
  end

  def self.check_inventory
    puts "You have #{$current_character.get_dollars} dollars!".yellow
    puts
    run(@@location)
  end

  def self.shop
    puts
    puts "The sign on the shop reads:"
    puts "Sorry, we're closed.".italic.yellow
    sleep 1
    puts
    run(@@location)
  end
end
