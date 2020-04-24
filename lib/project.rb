class Project
    attr_accessor :title
    @@all = []

    def initialize (title)
        @title = title
        Project.all << self
    end

    def self.all
        @@all
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

end