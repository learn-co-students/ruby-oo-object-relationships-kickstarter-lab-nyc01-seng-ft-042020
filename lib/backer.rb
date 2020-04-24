class Backer

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        Backer.all << self
    end

    def self.all
        @@all
    end


end