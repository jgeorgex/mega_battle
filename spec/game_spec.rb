require './lib/game'

describe Game do
  it 'can attack a player' do
    p1 = Player.new('Gary')
    p2 = Player.new('Peter')
    game = Game.new(p1, p2)
    p game
    game.attack(p1)
    expect(p1.hp).to eq(40)
  end
  it 'accepts two player instances' do
    p1 = Player.new('Gary')
    p2 = Player.new('Peter')
    game = Game.new(p1, p2)
    expect(game.p1_name).to eq 'Gary'
  end
end
