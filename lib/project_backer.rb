# When a `ProjectBacker` instance is initialized, it should be initialized with a `Project` instance and a
# `Backer` instance.

# #The `ProjectBacker` class is maintaining the relationship. It should have an `@@all` class
# variable. When an instance is initialized, it should be
# stored in this variable.

# The `ProjectBacker` class should also have a class
# method `.all` that returns the `@@all` class variable.

class ProjectBacker
    @@all =[]
    attr_reader :project, :backer
  
    def initialize(project, backer)
      @project = project
      @backer = backer
      ProjectBacker.all << self
    end
  
    def self.all
      @@all
    end
  
  
  end