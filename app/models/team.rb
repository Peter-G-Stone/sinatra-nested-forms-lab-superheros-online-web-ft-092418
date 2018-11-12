class Team

    attr_accessor :name, :motto, :heroes
    
    @@all = []

    def initialize (name, motto)
        @name = name
        @motto = motto 
        @heroes = []
        self.save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def self.clear 
        @@all = []
    end


end