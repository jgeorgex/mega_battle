require './lib/game'

describe Game do
  it 'can attack a player' do
    dave = Player.new('Dave')
    subject.attack(dave)
    expect(dave.hp).to eq(40)
  end
end
