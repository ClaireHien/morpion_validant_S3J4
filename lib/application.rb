
require 'pry'
require_relative 'board'
require_relative 'player'
require_relative 'boardcase'
require_relative 'game'

class Application

  #lance le message de début de jeu
  def start_game
    puts "Bienvenue"
  end

  #demande au joueur 1 son nom
  def ask_player1
    puts "Pseudo J1 ? "
    player1 = gets.chomp
    return player1
  end

  #demande au joueur 2 son nom
  def ask_player2
    puts "Pseudo J2 ? "
    player2 = gets.chomp
    return player2
  end

  #demande aux joueurs s'ils veulent refaire une partie
  def ask_again(game)
    puts "Veux-tu rejouer ? OUI / NON"
    print "> "
    input = gets.chomp
    while input != "OUI" || input != "NON"
      case input
      when "OUI"
        #si oui, va lancer le nettoyage de la grille et relance une partie
        input = " "
        game.new_round
        game.turn
      when "NON"
        #si non, va afficher le tableau de fin
        game.game_end
        break
      else
        #si l'entrée n'est pas bonne, retourne à l'input
        puts "Veux-tu rejouer ? OUI / NON"
        print "> "
        input = gets.chomp
      end
    end
  end

  #va lancer l'application
  def perform
    start_game
    player1 = ask_player1
    player2 = ask_player2
   
    game = Game.new(player1, player2) #créer le premier jeu
    game.turn

    ask_again(game) #une boucle qui effectues plusieurs parties tant que les joueurs ne disent pas stop

  end
  
end