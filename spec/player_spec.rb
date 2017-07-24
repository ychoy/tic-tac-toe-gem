require "spec_helper"

module TicTacToe
 describe Player do
  context "#initialize" do 
   it "raises an exception when initialized with {}" do
    expect {Player.new({})}.to raise_error 
   end
    
   it "does not raise error when initialized with a valid input hash" do 
    input = { mark: "X", name: "Someone" }
    expect { Player.new(input) }.to_not raise_error
   end  

  end 
  
  context "#mark" do 
   it "returns the mark" do 
    input = { mark: "X", name: "Harry" }
    player = Player.new(input)
    expect(player.mark). to eq "X"
   end 
  end 

 end 

end 

