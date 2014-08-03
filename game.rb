require_relative 'player'
require_relative 'die'


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
      die = Die.new
      case die.roll
      when 1..2
        player.blam
      when 3..4
        puts "#{player.name} was skipped."
      when 5..6
        player.w00t
      end
      puts player
    end
  end
end
