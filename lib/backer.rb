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
        ProjectBacker.new(project, self)
    end
    def backed_projects
        project_backers = ProjectBacker.all.select {|project| project.backer == self}
        project_backers.map {|backed_project| backed_project.project}
        #returns an array of projects that are associated with this instance
        # 1) Backer - backed_projects returns an array of projects associated with this Backer instance
        # Failure/Error: expect(meryl.backed_projects).to eq([karaoke, book])
    end
end 