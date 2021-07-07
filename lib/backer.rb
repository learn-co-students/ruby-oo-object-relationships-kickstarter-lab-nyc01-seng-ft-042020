require "pry"

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
        project_backers = ProjectBacker.all.select do |project| 
            project.backer == self
            # binding.pry

    # returns [3] pry(#<Backer>)> project_backers
    # => [#<ProjectBacker:0x00007fc0b22b29e0
    #   @backer=#<Backer:0x00007fc0b22b2a08 @name="Meryl">,
    #   @project=#<Project:0x00007fc0b22b2a80 @title="Karaoke">,
    #   @title=nil>,
    #  #<ProjectBacker:0x00007fc0b22b2918
    #   @backer=#<Backer:0x00007fc0b22b2a08 @name="Meryl">,
    #   @project=#<Project:0x00007fc0b22b2af8 @title="Ruby, Ruby, and More Ruby">,
    #   @title=nil>]

    # project_backers returns an array with every ProjectBacker data instance that == self
    
        end

        project_backers.map do |backed_project| 
            backed_project.project

    # project_backers.map filters through the large dataset of project_backers so only the 
    # .project variables are returned
            # binding.pry
        end
        # binding.pry
        #returns an array of projects that are associated with this instance
        # 1) Backer - backed_projects returns an array of projects associated with this Backer instance
        # Failure/Error: expect(meryl.backed_projects).to eq([karaoke, book])
    end
    # binding.pry
end 