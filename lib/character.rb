class Character
    attr_accessor :name
    attr_accessor :class
    attr_accessor :hp
    attr_accessor :inventory, :gold
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
      @gold = 0
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
      @gold = 0
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
        add_to_inventory("Colt Model 1878 Coach Shotgun")
      elsif @class == Character::CHARACTER_CLASSES[1]
        add_to_inventory("Winchester Model 1876 Lever Action Rifle")
      elsif @class == Character::CHARACTER_CLASSES[2]
        add_to_inventory("Colt Model 1892 Double Action Revolver")
      end
      @equipped_weapon = @inventory[0]
    end
  