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