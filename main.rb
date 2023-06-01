require_relative 'classes/nameable'
require_relative 'classes/person'
require_relative 'classes/student'
require_relative 'classes/teacher'
require_relative 'classes/decorator'
require_relative 'classes/capitalize_decorator'
require_relative 'classes/trimmer_decorator'

person = Person.new(22, 'maximilianus')
 puts person.correct_name
 puts capitalizedPerson = CapitalizeDecorator.new(person)
 puts capitalizedPerson.correct_name
 puts capitalizedTrimmedPerson = TrimmerDecorator.new(capitalizedPerson)
 puts capitalizedTrimmedPerson.correct_name