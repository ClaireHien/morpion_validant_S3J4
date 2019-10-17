require_relative 'boardcase'
require_relative 'player'
require 'pry'

class Board
    attr_accessor :array_case
    #TO DO : la classe a 1 attr_accessor : un array/hash qui contient les BoardCases.
    #Optionnellement on peut aussi lui rajouter un autre sous le nom @count_turn pour compter le nombre de coups joué
  
    def initialize
      #TO DO :
      #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
      #Ces instances sont rangées dans un array/hash qui est l'attr_accessor de la classe
      @array_case = []

      @array_case << BoardCase.new("A1")
      @array_case << BoardCase.new("A2")
      @array_case << BoardCase.new("A3")
      @array_case << BoardCase.new("B1")
      @array_case << BoardCase.new("B2")
      @array_case << BoardCase.new("B3")
      @array_case << BoardCase.new("C1")
      @array_case << BoardCase.new("C2")
      @array_case << BoardCase.new("C3")

    end
  
    def board_display
      puts " "
      puts "      | 1 | 2 | 3 "
      print "   "
      puts "-" * 15
      puts "    A | #{array_case[0].value} | #{array_case[1].value} | #{array_case[2].value} "
      print "   "
      puts "-" * 15
      puts "    B | #{array_case[3].value} | #{array_case[4].value} | #{array_case[5].value} "
      print "   "
      puts "-" * 15
      puts "    C | #{array_case[6].value} | #{array_case[7].value} | #{array_case[8].value} "
      puts " "
    end

    def board_clean
      n = "."
      array_case[0].value = n
      array_case[1].value = n
      array_case[2].value = n
      array_case[3].value = n
      array_case[4].value = n
      array_case[5].value = n
      array_case[6].value = n
      array_case[7].value = n
      array_case[8].value = n
    end

    def play_turn(player)

      #changer a valeur de la case en X ou O
      if player == "01"
        a = "X"
      else 
        a = "O"
      end

      #TO DO : une méthode qui :
      #1) demande au bon joueur ce qu'il souhaite faire
      #2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
      puts "Quelle case  choisi-tu ?"
      input = gets.chomp
      while input != "A1" || input != "A2" || input != "A3" || input != "B1" || input != "B2" || input != "B3" || input != "C1" || input != "C2" || input != "C3"
          case input

          when "A1"
              array_case[0].value = a
              break
          when "A2"
            array_case[1].value = a
              break
          when "A3"
            array_case[2].value = a
              break
          when "B1"
            array_case[3].value = a
              break
          when "B2"
            array_case[4].value = a
              break
          when "B3"
            array_case[5].value = a
              break
          when "C1"
            array_case[6].value = a
              break
          when "C2"
            array_case[7].value = a
              break
          when "C3"
            array_case[8].value = a
              break
          else
              puts "Nop!"
              print "> "
              input = gets.chomp
          end
      end
    end
  
    def victory?

      if array_case[0].value == array_case[1].value && array_case[1].value == array_case[2].value && array_case[2].value == "X"
        puts "victoire des X"
        return true
      elsif array_case[3].value == array_case[4].value && array_case[4].value == array_case[5].value && array_case[5].value == "X"
        puts "victoire des X"
        return true
      elsif array_case[6].value == array_case[7].value && array_case[7].value == array_case[8].value && array_case[8].value == "X"
        puts "victoire des X"
        return true
      elsif array_case[0].value == array_case[3].value && array_case[3].value == array_case[6].value && array_case[6].value == "X"
        puts "victoire des X"
        return true
      elsif array_case[1].value == array_case[4].value && array_case[4].value == array_case[7].value && array_case[7].value == "X"
        puts "victoire des X"
        return true
      elsif array_case[2].value == array_case[5].value && array_case[5].value == array_case[8].value && array_case[8].value == "X"
        puts "victoire des X"
        return true
      elsif array_case[0].value == array_case[4].value && array_case[4].value == array_case[8].value && array_case[8].value == "X"
        puts "victoire des X"
        return true
      elsif array_case[2].value == array_case[4].value && array_case[4].value == array_case[6].value && array_case[6].value == "X"
        puts "victoire des X"
        return true

      elsif array_case[0].value == array_case[1].value && array_case[1].value == array_case[2].value && array_case[2].value == "O"
        puts "victoire des 0"
        return true
      elsif array_case[3].value == array_case[4].value && array_case[4].value == array_case[5].value && array_case[5].value == "O"
        puts "victoire des 0"
        return true
      elsif array_case[6].value == array_case[7].value && array_case[7].value == array_case[8].value && array_case[8].value == "O"
        puts "victoire des 0"
        return true
      elsif array_case[0].value == array_case[3].value && array_case[3].value == array_case[6].value && array_case[6].value == "O"
        puts "victoire des 0"
        return true
      elsif array_case[1].value == array_case[4].value && array_case[4].value == array_case[7].value && array_case[7].value == "O"
        puts "victoire des 0"
        return true
      elsif array_case[2].value == array_case[5].value && array_case[5].value == array_case[8].value && array_case[8].value == "O"
        puts "victoire des 0"
        return true
      elsif array_case[0].value == array_case[4].value && array_case[4].value == array_case[8].value && array_case[8].value == "O"
        puts "victoire des 0"
        return true
      elsif array_case[2].value == array_case[4].value && array_case[4].value == array_case[6].value && array_case[6].value == "O"
        puts "victoire des 0"
        return true
      else 
        return false
      end
     
    end

end

#binding.pry