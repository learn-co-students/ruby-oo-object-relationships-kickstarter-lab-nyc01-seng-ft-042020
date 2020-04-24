class Project

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        Project.all << self
    end

    def self.all
        @@all
    end

    def title
        self.name
    end


end