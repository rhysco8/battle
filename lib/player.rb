class Player
    attr_reader :name, :hp

    STARTING_HP = 100

    def initialize(name)
      @name = name
      @hp = STARTING_HP
    end

    def damage
        @hp -= 10
    end

end
