class Backer

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        Backer.all << self
    end

    def self.all
        @@all
    end

    def back_project(project)
        # ProjectBacker.all.select do |project|
        #     project.backer == self
        # end
        ProjectBacker.new(project, self)
    end

    def backed_projects
        abc =  ProjectBacker.all.select do |project|
            project.backer == self
        end
          ##.map(&:project)
        abc.map do |x|
            x.project
        end

    end


end