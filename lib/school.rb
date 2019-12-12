
class School 
  attr_accessor :name, :roster 
  def initialize(name)
    @name = name 
    @roster = {}
  end
  
  def add_student(grade, student)
    roster[student] ||= []
    roster[student] << grade
  end
  
  def grade(student)
    return roster[student]
  end
  
  def sort
    sorted = {}
      roster.each{|grades, students| sorted[grades]=students.sort}
    sorted
  end
end