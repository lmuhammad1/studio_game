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
player4 = Player.new('shemp', 90)
players = [player1, player2, player3]
players.pop
players.push(player4)

puts "There are #{players.count} players in the game."

players.each do |player|
  puts "#{player.name}'s health rating is #{player.health}."
end

players.each do |player|
  player.blam
  player.w00t
  player.w00t
  puts player
end

