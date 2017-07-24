module TicTacToe
 class Cell
  attr_accessor :value 
  #track the cell's value and intiialize it with a default value of ''
  def initialize(value = "")
   @value = value 
  end 

 end 

end 

