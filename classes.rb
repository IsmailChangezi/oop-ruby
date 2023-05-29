class Person
  def initialize(id, name, age, parent_permission)
    @id = id
    @name = name
    @age = age
    @parent_permission = parent_permission
  end
  attr_accessor :name, :age
  attr_reader :parent_permission

  private

  def of_age?
    @age >= 18
  end

  public

  def can_use_services?
    of_age? == true
  end
end

class Student < Person
  def initialize(id, name, age, parent_permission, classroom)
    super(id, name, age, parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end

class Teacher < Person
  def initialize(id, name, age, parent_permission, specialization)
    super(id, name, age, parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end

Person1 = Person.new(1, 'john', 12, false)
print Person1.name
