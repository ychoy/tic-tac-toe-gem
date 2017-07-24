require "spec_helper"

module TicTacToe
 describe Cell do

  context "#intitialize" do 
   it "is initialized with a value of '' by default" do 
    cell = Cell.new
    expect(cell.value).to eq '' 
   end

   it "can be inititialized with a value of 'X'" do 
    cell = Cell.new("X")
    expect(cell.value).to eq "X"
   end 
 
  end 

 end 
end 
