RSpec.describe 'start with and end with matcher' do
  describe 'caterpiller' do
    it 'should check for a substring at the beggining and end' do
      expect(subject).to start_with('cat')
      expect(subject).to end_with('piller')
    end

    it {is_expected.to start_with('cat')}
    it {is_expected.to end_with('piller')}
  end

  describe [:a, :b, :c, :d] do
    it 'should check for elements at the beginning or end of the array' do
      expect(subject).to start_with(:a)
      expect(subject).to start_with(:a, :b)
      expect(subject).to start_with(:a, :b, :c)
      expect(subject).to end_with(:d)
    end

    it {is_expected.to start_with(:a, :b)}
  end
end