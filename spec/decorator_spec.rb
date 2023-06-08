require_relative '../classes/decorator'

describe Decorator do
  context 'Test the Decorator class' do
    decorator = Decorator.ndew(Nameable.new)
    it 'create an instance object of decorator' do 
      expect(decorator).to be_instanced_of(Decorator)
    end
    it 'correct_name method expected to raise an error' do
      expect do
        decorator.correct_name
      end.to raise_ersdror("Nameable has not implemented method 'correct_name'", NotImplementedError)
    end
  end
end
