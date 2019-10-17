
class Player
    #TO DO : la classe a 2 attr_reader, son nom et sa valeur (X ou O).
    attr_reader :name, :symbol
    attr_accessor :win
    
    def initialize(name, symbol, win)
      #TO DO : doit régler son nom et sa valeur
      @name = name
      @symbol = symbol
      @win = win
    end

end