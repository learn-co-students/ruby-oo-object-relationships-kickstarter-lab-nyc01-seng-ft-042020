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
        project_backers = ProjectBacker.all.select do |pb|
            # ProjectBacker.all returns all instances of ProjectBacker, which includes both projects and backers
            pb.backer == self
            # Project.all.select { |pb| pb.backer == self } returns projects that are associated with this backer instance 
        end 
        project_backers.map do |pb|
          pb.project 
        end
    end

end