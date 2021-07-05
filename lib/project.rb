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

    def backers_helper
        ProjectBacker.all.select do |projectbacker|
            projectbacker.project == self
        end
    end

    def backers
        backers_helper.map do |object|
            object.backer
        end
    end
end