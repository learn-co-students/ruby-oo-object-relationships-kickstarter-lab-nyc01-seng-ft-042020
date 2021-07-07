class ProjectBacker
    attr_accessor :project, :title, :backer
    @@all = []
    def initialize(project, backer)
        @backer = backer
        @project = project
        @title = title
        ProjectBacker.all << self
    end
    def self.all
        @@all 
    end
end 