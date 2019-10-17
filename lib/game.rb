require 'pry'
require_relative 'board'
require_relative 'player'
require_relative 'boardcase'

class Game < Board
  attr_accessor :players, :board, :current_player
   
  def initialize(player1, player2)
    @board = Board.new

    @players = []

    #va créer nos deux joueurs et les mettre dans un array
    @current_player = Player.new(player1, "O", 0)
    @players << @current_player
    @current_player = Player.new(player2, "X", 0)
    @players << @current_player

  end

  def score 
    #affiche les scores à la fin de chaque parties
    puts "TABLEAU DES SCORES"
    puts "#{players[0].name} a eu #{players[0].win} victoires !"
    puts "#{players[1].name} a eu #{players[1].win} victoires !"

  end

  #lance une partie complète (d'après les méthodes du ficher board.rb)
  def turn

    loop do
      board.board_display

      #tour du joueur 1
      puts "C'est au tour de : #{players[0].name}"
      board.play_turn("01")
      board.board_display

      #sors de la boucle en cas de victoire du joueur 1
      if board.victory == "X"
        puts "Victoire de #{players[0].name} ! "
        players[0].win += 1
        break
      end

      #sors de la boucle en cas d'égalité
      if board.victory == "égalité"
        puts "Egalité"
        break
      end

      #tour du joueur 2
      puts "C'est au tour de : #{players[1].name}"
      board.play_turn("02")
      board.board_display

      #sors de la boucle en cas de victoire du joueur 2
      if board.victory == "O"
        puts "Victoire de #{players[1].name} ! "
        players[0].win +=1
        break
      end

    end

    score #affiche les scores

  end

  def new_round
    board.board_clean #nettoie le tableau en vue d'une nouvelle partie
  end

  def game_end
    #affiche la fin de toutes les parties avec le tableau des scores final
    puts " fin de la partie ! "
    score
  end    
  
end
  