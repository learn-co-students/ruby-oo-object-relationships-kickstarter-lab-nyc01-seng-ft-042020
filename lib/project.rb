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

    def add_backer(backer)
        ProjectBacker.new(self,backer)
    end

    def backers
        project_backer_instances = ProjectBacker.all.select do |project|
            project.project==self
        end
        project_backer_instances.map do |instance|
            instance.backer
        end
    end
end