class Backer
    attr_accessor :name
   
    def initialize(name)
         @name = name 
    end
    def back_project(project)
        ProjectBacker.new(project, self)
        # create a project backer 
        # connect the project with the backer

    end
    def backed_projects
        projects_backed = ProjectBacker.all.select do |project|
            project.backer == self
        end
        projects_backed.map do |project_backed|
            project_backed.project
        end
    end
     
    end