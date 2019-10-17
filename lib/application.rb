
require 'pry'
require_relative 'board'
require_relative 'player'
require_relative 'boardcase'
require_relative 'game'

class Application

  def start_game
    puts "Bienvenue"
  end

  def ask_player1
    puts "Pseudo J1 ? "
    player1 = gets.chomp
    return player1
  end

  def ask_player2
    puts "Pseudo J2 ? "
    player2 = gets.chomp
    return player2
  end

  def ask_again(game)
    puts "Veux-tu rejouer ? OUI / NON"
    print "> "
    input = gets.chomp
    while input != "OUI" || input != "NON"
      case input
        when "OUI"
          input = " "
          game.new_round
          game.turn
        when "NON"
          game.game_end
          break
        else
          puts "Veux-tu rejouer ? OUI / NON"
          print "> "
          input = gets.chomp
      end
    end
  end

  def perform
    start_game
    player1 = ask_player1
    player2 = ask_player2
    # TO DO : méthode qui initialise le jeu puis contient des boucles while pour faire tourner le jeu tant que la partie n'est pas terminée.
    
    game = Game.new(player1, player2)
    game.turn

    ask_again(game)

  end
  
end