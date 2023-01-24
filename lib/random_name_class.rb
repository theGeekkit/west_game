
module RandomName

    RANDOM_CLASSES = [
        "Dirty Vagrant",
        "Angry Drunkard",
        "Sharp-Eyed Gambler",
        "Weasley Cur",
        "Greasey looking Thug",
        "Belligerent Stranger",
        "Mad Bandito",
        "Insane Miner",
        "Spurned Tough Guy",
        "Father of the girl from last night",
        "Hot blooded Brave",
        "Trigger happy European",
        "Buffalo Hunter",
        "Rotten toothed killer",
        "Low down deserter",
        "Notoriety seeker"
    ]

    RANDOM_NAMES = [
      "Phil",
      "Pedro",
      "Louis",
      "Jesse",
      "James",
      "Bill",
      "Ted",
      "Konrad",
      "Dick",
      "Johnny",
      "Bob",
      "Duncan",
      "Ralph",
      "Lola",
      "Jane",
      "Carl",
      "Joe",
      "Gary",
      "Big Bear",
      "Sitting Bull",
      "Eisner",
      "Carlos",
      "Ruddy"

    ]

    RANDOM_MONSTER_TYPES = [
      "Goblin",
      "Troll",
      "Giant snake",
      "Centaur",
      "Minotaur",
      "Scorpion swarm",
      "Wolf",
      "Shifter",
      "Manticore",
      "Harpy",
      "Desert Dryad",
      "Giant Tunnel spider",
      "Zombie",
      "Ghoul",
      "Vampire spawn",
      "Vampire Lord"

    ]

    def self.random_name
        end_range = RANDOM_NAMES.length - 1
        ran_num = rand(0..end_range)
        RANDOM_NAMES[ran_num]
      end

      def self.random_class
        end_range = RANDOM_CLASSES.length - 1
        ran_num = rand(0..end_range)
        RANDOM_CLASSES[ran_num]
      end

      def self.random_monster_type
        end_range = RANDOM_MONSTER_TYPES.length - 1
        ran_num = rand(0..end_range)
        RANDOM_MONSTER_TYPES[ran_num]
      end

end
