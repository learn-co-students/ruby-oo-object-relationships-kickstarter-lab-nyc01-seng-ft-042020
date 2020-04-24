class Project
    attr_accessor :title
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
        project_backers = ProjectBacker.all.select {|backers| backers.project == self}
        project_backers.map {|backed_project| backed_project.backer}
    end
end 