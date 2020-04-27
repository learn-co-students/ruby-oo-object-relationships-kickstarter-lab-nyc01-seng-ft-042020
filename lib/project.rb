require 'pry'
class Project
    attr_accessor :title
    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers_helper
        ProjectBacker.all.select { |backer| backer.project == self}
    end

    def backers
        # binding.pry
        backers_helper.map { |project_backer| project_backer.backer}
    end
end


#initialize title