class Project
    attr_reader :title
    def initialize(title)
        @title = title 
    end
    def add_backer(backer)
        ProjectBacker.new(self, backer)
        # create a project backer 
        # connect the project with the backer

    end
    def backers
        backed = ProjectBacker.all.select do |backer|
            backer.project == self
        end
        backed.map do |back|
            back.backer
        end
   
    # projects_backed = ProjectBacker.all.select do |project|
    #     project.backer == self
    # end
    # projects_backed.map do |project_backed|
    #     project_backed.project
    # end
end
 
     
end