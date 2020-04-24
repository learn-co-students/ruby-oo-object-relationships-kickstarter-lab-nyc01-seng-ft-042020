# # # When a `Backer` instance is initialized, it should be initialized with a name.

# # Once both classes have their attributes and readers set up, write an instance
# #   method on the Backer class called `back_project` that takes in a Project
# #   instance. This method should create a `ProjectBacker` instance using the
# #   provided Project instance and the current Backer instance (the instance this method was called on).

# With `back_project` set up, the final step for the Backer class is to build an
# instance method that returns all the projects associated with _this Backer
# instance. Since Project instances are not directly associated with Backer instances, you will need to get
# this information _through_ the ProjectBacker class.

class Backer
    attr_reader :name
    def initialize(name)
      @name = name
    end
  
    def back_project(project)
       project = ProjectBacker.new(project, self)
     end
  
     def backed_projects
        ProjectBacker.all.collect{ |p| p.backer == self ? p.project : nil}.compact
     end
  
  end