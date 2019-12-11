#school class
class School
    def initialize(name)
        @name = name
        @roster = {}
    end

    attr_accessor :roster

    def add_student(student, grade)
        if @roster[grade] == nil
            @roster[grade] = []
        end
        @roster[grade] << student
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        sorted_school = {}
        @roster.each do |grade, students|
            sorted_school[grade] = students.sort
        end
        sorted_school

    end

end