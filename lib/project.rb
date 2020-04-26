class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        ProjectBacker.all.select do |each_instance|
            each_instance.project == self 
        end.map do |each_instance|
            each_instance.backer 
        end
    end

end