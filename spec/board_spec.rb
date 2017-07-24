require "spec_helper"

module TicTacToe
 describe Board do 
  context "#intitialize" do 

   it "initializes the board with a grid" do 
    expect { Board.new(grid: "grid") }.to_not raise_error
   end 

   it "sets the grid with three rows by default" do
    board = Board.new
    expect(board.grid.length).to eq 3
   end
 
   it "creates three things in each row by default" do
    board = Board.new
    board.grid.each do |row|
     expect(row.length).to eq 3
    end
   end

  end
  
  context "#grid" do 
   it "returns the grid" do 
    board = Board.new(grid: "hello")
    expect(board.grid).to eq "hello"
   end 
  end 

  context "#get_cell" do
   it "returns the cell based on the (x,y) coordinate" do 
    grid = [["","",""],["","","x"],["","",""]]
    board = Board.new(grid: grid)
    expect(board.get_cell(2,1)).to eq "x"
   end
  end 

  context "#set_cell" do
  it "updates the value of the cell object at a (x, y) coordinate" do
    Cow = Struct.new(:value) #use Struct to create a new object that responds to the value messages
    grid = [[Cow.new("cool"), "", ""], ["", "", ""], ["", "", ""]]
    board = Board.new(grid: grid)
    board.set_cell(0, 0, "moo")
    expect(board.get_cell(0, 0).value).to eq "moo"
  end
end
 end 
end 

