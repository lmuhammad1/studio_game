class Player

  attr_accessor :name
  attr_reader :health
  def initialize(name, health=100)
    @name = name.capitalize
    @health = health
  end

  def to_s
    "I'm #{@name} with a health of #{@health} and a score of #{score}."
  end

  def name=(new_name)
    @name = new_name.capitalize
  end

  def score
    @health + @name.length
  end

  def w00t
    @health += 15
    puts "#{@name} got w00ted!"
  end

  def blam
    @health -= 10
    puts "#{@name} got blammed!"
  end
end

player1 = Player.new('moe')
player2 = Player.new('larry', 60)
player3 = Player.new('curly', 125)
puts player2
puts player3
player3.blam
player3.w00t
puts player3
puts player1
puts player1.health
puts player2.health
puts player3.health
player2.name = "lawrence"
puts player2
puts player2.score
