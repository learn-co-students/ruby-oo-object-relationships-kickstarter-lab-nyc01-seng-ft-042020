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
