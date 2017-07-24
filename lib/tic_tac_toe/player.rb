module TicTacToe
 class Player
  #read player's mark and name 
  attr_reader :mark, :name

  #Player class should be instantiated with a hash that has :name and :mark keys and will raise exceptoin if the required keys are missing
  def initialize(input)
   @mark = input.fetch(:mark)
   @name = input.fetch(:name)
  end 
 end 
end 

