class Person
  def a(seconds)
    sleep(seconds)
    "Hello"
  end
end

RSpec.describe Person do
  describe 'regular double' do
    it 'can implement and method' do
      person = double(a: "Hello", b: 20)
      expect(person.a).to eq("Hello")
    end
  end

  describe 'instanec double' do
    it 'can only implement methods that are defined on the class' do
      # person = instance_double(Person, a: 'Hello', b: 20)
      person = instance_double(Person)
      allow(person).to receive(:a).with(3).and_return('Hello')
      expect(person.a(3)).to eq('Hello')
    end
  end

end
