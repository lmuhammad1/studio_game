require_relative 'player'

class Game
  def initialize(title)
    @title = title
    @players = []
  end

  def add_player(a_player)
    @players << a_player
  end
  attr_reader :title

  def play
    puts "There are #{@players.size} players in the #{@title}."
    @players.each do |player|
      puts player
    end
    @players.each do |player|
      player.blam
      player.w00t
      player.w00t
      puts player
    end
  end
end