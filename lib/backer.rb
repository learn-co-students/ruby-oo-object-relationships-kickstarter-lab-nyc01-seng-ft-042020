class Backer
    attr_reader :name
    @@all = []

    def initialize (name)
        @name = name
        Backer.all << self
    end

    def self.all
        @@all
    end

    def back_project (project)
        ProjectBacker.new(project, self)
    end

endg