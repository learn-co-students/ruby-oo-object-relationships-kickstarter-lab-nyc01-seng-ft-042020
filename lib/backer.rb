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

    def backed_projects
        project_backer_instances = ProjectBacker.all.select do |project|
            project.backer == self
        end
        project_backer_instances.map do |instance|
            instance.project
        end
    end
end