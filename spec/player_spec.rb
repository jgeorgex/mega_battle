require 'player'

describe Player do
  subject(:dave) { Player.new('Dave') }

  describe '#name' do
    it "returns the name" do
      expect(dave.name).to eq('Dave')
    end
  end

  describe '#HP' do
    it "returns the HP" do
      expect(dave.hp).to eq(50)
    end
  end

end
