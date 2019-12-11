# code here!
class School
  attr_accessor :roster, :name
  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
   @roster[grade] ||= []
    @roster[grade] << name
  end
  
  def grade(grade_number)
    @roster[grade_number]
  end
  
  def sort
    roster_sort = {}
    @roster.each do |grade, name|
      roster_sort[grade] = name.sort
    end
    roster_sort
  end
  
end #end of class School