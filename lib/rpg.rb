class RPG
    def initialize
      @player = Player.new
      @monster = Monster.new
    end

    def start
      while @player.alive? && @monster.alive?
        puts "What do you want to do? (attack/run)"
        action = gets.chomp.downcase
        if action == "Shoot"
          @player.attack(@monster)
        elsif action == "run"
          run
        else
          puts "Invalid action"
        end
      end
    end

    def run
      chance = rand(1..10)
      if chance == 6..10
        puts "You successfully ran away"
        @player.alive = false
      else
        puts "Failed to run away"
        @monster.attack(@player)
      end
    end
