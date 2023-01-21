module RandomName

    RANDOM_CLASSES = [
        "Dirty Vagrant",
        "Angry Drunkard",
        "Sharp-Eyed Gambler",
    ]

    RANDOM_NAMES = [       

    ]

    RANDOM_MONSTER_TYPES = [

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