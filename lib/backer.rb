class Backer
    attr_accessor :name
    @@all = []

    def initialize (name)
        @name = name
        Backer.all << self
    end

    def self.all
        @@all
    end
      
    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects_helper
        ProjectBacker.all.select {|project_backer_instance| project_backer_instance.backer == self}
    end

    def backed_projects
        backed_projects_helper.map {|joiner_instance| joiner_instance.project}
    end

end