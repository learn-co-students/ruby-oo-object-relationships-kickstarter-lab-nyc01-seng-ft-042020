class Project

    attr_reader :title

    @@all = []

    def initialize(title)
        @title = title
        Project.all << self
    end

    def self.all
        @@all
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        abc = ProjectBacker.all.select do |x|
            x.project == self
        end
        abc.map do |x|
            x.backer
        end
    end


end