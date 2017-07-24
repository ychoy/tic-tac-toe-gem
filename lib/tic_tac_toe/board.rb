module TicTacToe
 class Board
  attr_reader :grid

  def initialize(input={})
   #Board class can be instantiated with input hash or default value
   @grid = input.fetch(:grid, default_grid)
  end 

  def get_cell(x,y)
   grid[y][x]
  end 

  def set_cell(x,y,value)
   get_cell(x,y).value = value 
  end 

  def game_over
   return :winner if winer?
   return :draw if draw?
   false 
  end 

  private
  #only called by isntances of the Board class
  def default_grid
   Array.new(3) { Array.new(3) {Cell.new} }
  end 
  
  def draw? 
  #return true if none of Array elements are empty. 
  #Check by converting cells into single array of values and call Array#non_empty? to check for a draw 
   grid.flatten.amp{|cell| cell.value}.none_empty?
  end 
 end 
end 

