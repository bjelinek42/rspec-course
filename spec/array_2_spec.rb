RSpec.describe Array do
  subject(:sally) do
    ["a", "b"]
  end

  it 'has a length of 2' do
    expect(sally.length).to eq(2)
    sally.pop
    expect(sally.length).to eq(1)
  end

  it 'has a length of 2' do
    expect(sally.length).to eq(2)
  end
end