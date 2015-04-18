describe User do
  it 'can be added and removed from the database' do
    expect(described_class.count).to eq 0
    described_class.create(name: 'Sam')
    expect(described_class.count).to eq 1
    link = described_class.first
    expect(link.name).to eq 'Sam'
    link.destroy
    expect(described_class.count).to eq 0
  end
end