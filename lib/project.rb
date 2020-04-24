class Project
    attr_reader :title
    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        finished_projects = ProjectBacker.all.select do |backer|
            backer.project == self
        end
        finished_projects.map do |pb|
            pb.backer
        end
    end
end