# require 'pry'
class Backer
    attr_accessor :name
    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end
    def backed_projects_helper
        ProjectBacker.all.select { |project| project.backer == self }
    
    end
    
    def backed_projects
        backed_projects_helper.map { |project_becker| project_becker.project}
        # binding.pry
    end
end

# binding.pry
#initialize with name