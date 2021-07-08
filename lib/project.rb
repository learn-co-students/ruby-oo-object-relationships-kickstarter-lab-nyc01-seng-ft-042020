# # When a `Project` instance is initialized, it should be initialized with a title.

# # Similarly, write a method on the Project class called `add_backer` that takes
# #   in a Backer instance and creates a `ProjectBacker` using the Backer instance
# #   and the current Project instance.

# For the Project class, write a similar method, `backers`, that returns all
#   _backers_ associated with this Project instance.

class Project
    attr_reader :title
  
    def initialize(title)
      @title = title
    end
  
    def add_backer(backer)
       @title = ProjectBacker.new(self, backer)
     end
  
     def backers
       ProjectBacker.all.collect{ |p| p.project == self ? p.backer : nil}.compact
     end
  
  end