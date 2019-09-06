class Game
attr_reader :p1_name, :p2_name, :p1_hp, :p2_hp, :player1, :player2

  def initialize(p1, p2)
    @player1 = p1
    @player2 = p2
    @p1_name = @player1.name
    @p2_name = @player2.name
    @p1_hp = @player1.hp
    @p2_hp = @player2.hp
  end

  def attack(player)
    player.hp -= 10
    @p2_hp = player.hp
  end

end
