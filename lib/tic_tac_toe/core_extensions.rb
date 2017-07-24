class Array
 #return true if all array elements are empty, false otherwise
 def all_empty?
  self.all? { |element| element.to_s.empty? }
 end 

 #return true if all array el are same, false otherwise
 def all_same?
  self.all?{ |element| element == self[0] }
 end 

 #return true if all array el are empty 
 def any_empty?
  self.any? { |element| element.to_s.empty? }
 end

 #return true if none of array el are empty 
 def none_empty?
  !any_empty?
 end
end 
