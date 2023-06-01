require_relative 'decorator'

class TrimmerDecorator < Decorator
  def correct_name
    name = @nameable.correct_name
    name = name[0, 10] if name.length > 10
    name
  end
end
