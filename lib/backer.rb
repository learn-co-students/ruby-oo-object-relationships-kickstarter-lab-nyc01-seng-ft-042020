require 'pry'
class Backer
    attr_reader :name
    
    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end
    
    def backed_projects
        selected_projects = ProjectBacker.all.select do |project|
            project.backer == self
        end
        selected_projects.map do |pb|
            pb.project
        end
    end
end