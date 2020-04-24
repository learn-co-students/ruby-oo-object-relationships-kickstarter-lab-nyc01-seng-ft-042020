class Project
    attr_reader :title
    @@all = []

    def initialize (title)
        @title = title
        Project.all << self
    end

    def self.all
        @@all
    end

end