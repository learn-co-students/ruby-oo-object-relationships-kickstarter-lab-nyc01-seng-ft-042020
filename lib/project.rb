require 'pry'
class Project
    attr_accessor :title
    def initialize(title)
        @title = title
    end
end
binding.pry

#initialize title