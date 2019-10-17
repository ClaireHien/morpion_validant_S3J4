require 'pry'
require_relative 'board'
require_relative 'player'
require_relative 'boardcase'

class Game < Board
  attr_accessor :players, :board, :status, :current_player
    #TO DO : la classe a plusieurs attr_accessor: le current_player (égal à un objet Player), le status (en cours, nul ou un objet Player s'il gagne), le Board et un array contenant les 2 joueurs.
  
    def initialize(player1, player2)
      @board = Board.new

      @players = []

      @current_player = Player.new(player1, "O")
      @players << @current_player
      @current_player = Player.new(player2, "X")
      @players << @current_player

      @status = "On going"

      #TO DO : créé 2 joueurs, créé un board, met le status à "on going", défini un current_player
    end
  
    def turn
      #TO DO : méthode faisant appelle aux méthodes des autres classes (notamment à l'instance de Board). Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie.

      loop do
      board.board_display
      puts "C'est au tour de : #{players[0].name}"
      board.play_turn("01")
      board.board_display
      break if board.victory? == true
      puts "C'est au tour de : #{players[1].name}"
      board.play_turn("02")
      board.board_display
      break if board.victory? == true
      end


    end
  
    def new_round
      board.board_clean        
    end
  
    def game_end
      puts " fin de la partie ! "
    end    
  
  end
  