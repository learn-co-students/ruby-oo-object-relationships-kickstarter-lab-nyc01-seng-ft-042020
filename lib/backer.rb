#can back many projects
#When a `Backer` instance is initialized, it should be initialized with a name.
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
