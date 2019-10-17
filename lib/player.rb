class Player
  attr_reader :name, :symbol
  attr_accessor :win
    
  def initialize(name, symbol, win)
    #Va prendre en @name le pseudo du joueur
    @name = name
    #Va prendre en @symbol, un symbole fixe : X ou O (lors de la création du joueur)
    @symbol = symbol
    #Va compter les victoires, commence à 0
    @win = win
  end

end