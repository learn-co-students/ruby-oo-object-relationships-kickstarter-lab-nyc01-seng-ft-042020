 require 'pry'
class ProjectBacker
    attr_accessor :backer, :project
    @@all =[]
    def initialize(backer, project)
        @backer = backer
        @project = project
        ProjectBacker.all << self
        #@@all << self
    end

    def self.all
        @@all
    end
end
binding.pry
