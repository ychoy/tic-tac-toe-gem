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

  context "#name" do 
   it "returns the name" do 
    input = { mark: "O", name: "Maude"}
    player = Player.new(input)
    expect(player.name). to eq "Maude"
   end 
  end 

 end 

end 

