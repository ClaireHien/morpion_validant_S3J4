require 'pry'
class BoardCase
    attr_accessor :value, :id
    #TO DO : la classe a 2 attr_accessor, sa valeur en string (X, O, ou vide), ainsi que son identifiant de case
    
    def initialize(id)
    #TO DO : doit régler sa valeur, ainsi que son numéro de case
        @id = id
        @value = "."
    end
    
  end
  
#binding.pry