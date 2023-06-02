class Classroom
    attr_accessor :label
    attr_reader :students
  
    def initialize(label)
      @label = label
      @students = []
    end
  
    def add_student(student)
      @students.push(student)
      student.classroom = self
    end
    def classroom=(classroom)
        @classroom = classroom
        classroom.student.push(self) unless classroom.students.includes?(self)
      end
  end