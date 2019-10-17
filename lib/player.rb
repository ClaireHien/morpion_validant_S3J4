
class Player
    #TO DO : la classe a 2 attr_reader, son nom et sa valeur (X ou O).
    attr_reader :name, :symbol
    
    def initialize(name, symbol)
      #TO DO : doit régler son nom et sa valeur
      @name = name
      @symbol = symbol
    end

end