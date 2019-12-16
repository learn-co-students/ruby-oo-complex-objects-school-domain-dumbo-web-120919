# code here!
require 'pry'
class School 

    attr_accessor :name, :roster

    def initialize(name)
        # 
        @name = name
        @roster = {}
        
        # 
    end

    # def roster
    #     roster[:roster] = []
    # end

    def add_student(name, grade)
        #binding.pry
       if roster[grade]
        roster[grade] << name
       else
        roster[grade] = []
        roster[grade] << name 
       end
    #   unless @roster[grades]
    #     @roster[grades] = []end
    #    end
    #    full_class = roster[grades] << names 
    end

    def grade(num)
        #binding.pry
        self.roster[num]
    end

    def sort
        
        self.roster.map{|k,v|[k,v.sort]}.sort.to_h

    end
end
