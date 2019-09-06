class Player
  attr_reader :name
  attr_accessor :hp

  INTIAL_HP = 50

  def initialize(name)
    @name = name
    @hp = INTIAL_HP
  end

end
