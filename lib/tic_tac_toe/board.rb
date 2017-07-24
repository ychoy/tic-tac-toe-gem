module TicTacToe
 class Board
  def initialize(input={})
   #Board class can be instantiated with input hash or default value
   @grid = input.fetch(:grid, default_grid)
  end 

  private
  #only called by isntances of the Board class
  def default_grid
   Array.new(3) { Array.new(3) {Cell.new} }
  end 
 end 
end 

