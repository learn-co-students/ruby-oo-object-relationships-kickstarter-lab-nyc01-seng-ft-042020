require 'pry'
class Backer
    attr_accessor :name
    def initialize(name)
        @name = name
    end
end

binding.pry
#initialize with name
#ruby 