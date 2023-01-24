require "./text_style.rb"
require "./items.rb"


class Character
    attr_accessor :name
    attr_accessor :class
    attr_accessor :hp
    attr_accessor :inventory, :dollars
    attr_accessor :level
    attr_accessor :exp_points
    attr_accessor :location

    def initialize
      @name = ""
      @class = "Tough"
      @hp = 12
      @hp_max = 12
      @atk = 5
      @inventory = []
      @dollars = 0
      @level = 1
      @exp_points = 0
      @next_level_exp = 10
      @alive = true
      @equipped_weapon = "Colt Model 1878 Coach Shotgun"
      @location = 0

    end

    CHARACTER_CLASSES = [
      "Tough",
      "Scout",
      "Gunslinger",
    ]

    ## Name

    def set_name(name)
      @name = name
    end

    def get_name
      @name
    end

    ## Class
    def set_class(class_input)
      @class = class_input
      fill_inventory
    end

    def get_class
      @class
    end

    ## HP

    def change_hp(hp_amount, gain_or_loss)
      if gain_or_loss == "gain"
        @hp = @hp + hp_amount
      elsif gain_or_loss == "loss"
        @hp = @hp - hp_amount
      end

      check_status
    end

    def get_hp
      @hp
    end

    def get_status
      @alive
    end

    def revive
      @dollars = 0
      @alive = true
      @hp = @_hp_max
    end

    def check_status
      if @hp <= 0
        @alive = false
      elsif @hp < 0
        @alive = true
      end
    end

    ## Inventory

    def fill_inventory
      inventory_array = []
      if @class == Character::CHARACTER_CLASSES[0]
        add_to_inventory("Coach Shotgun")
      elsif @class == Character::CHARACTER_CLASSES[1]
        add_to_inventory("Winchester Rifle")
      elsif @class == Character::CHARACTER_CLASSES[2]
        add_to_inventory("Colt Revolver")
      end
      @equipped_weapon = @inventory[0]
    end
    def add_to_inventory(new_item)
      @inventory.push(new_item)
      sleep 1
      puts "You got a #{new_item}! Don't lose it!".green
      sleep 1
    end

    def get_inventory
      @inventory
    end

    def change_weapon(new_weapon)
      @equipped_weapon = new_weapon
    end

    def get_weapon
      @equipped_weapon
    end

    def set_dollars(dollars_amt, add_dollars)
      if add_dollars == false && dollars_amt > @_dollars
        @dollars = 0
      elsif add_dollars == true
        @dollars = @dollars + dollars_amt
      elsif add_dollars == false
        @dollars = @dollars - dollars_amt
      end
    end

    def get_dollars
      @dollars
    end
## EXP

def add_exp(exp_amt)
  @exp_points += exp_amt
  level_up_check
end

def level_up_check
  if @exp_points >= @next_level_exp
    level_up
  end
end

def get_exp_to_level
  @next_level_exp - @exp_points
end

## Level

def level_up
  @level += 1
  @exp_points = @exp_points - @next_level_exp
  puts "You leveled up!".green
  @next_level_exp += 5
  @hp_max += 2
  @hp = @hp_max
  @atk += @atk * 0.5
  puts "Level: #{@level}".green
  puts "Health: #{@hp}".green
  puts "Attack: #{@atk}".green
end

def get_level
  @level
end

def get_next_exp
  @next_level_exp
end

def get_atk
  @atk
end

## Map Location

end
