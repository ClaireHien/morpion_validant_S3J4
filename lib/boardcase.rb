require 'pry'
class BoardCase
  attr_accessor :value, :id
    
  def initialize(id)
    #le nom de la case A1, A2...
    @id = id

    #ce que la case va afficher
    @value = " "
  end
    
end
  