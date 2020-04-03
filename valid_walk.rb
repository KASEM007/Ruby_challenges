=begin
    Valid Walk
    you have a walking robot.Given a string of compass directions 
    (e.g., "nesw" or "nnssen"). it will travel on mile in each of those
    direction.write a method to determine whether a set of directions
    will lead your robot back to it is starting position.
    Example:
        valid_walk?("nnn") #=> false
        valid_walk?("nenessww") #=> true
=end
def valid_walk?(str)
    directions = Hash.new(0)
    str.each_char do |char|
        directions[char]+= 1
       
    end
        directions["n"] == directions["s"] && directions["e"] == directions["w"]
end      
    
puts valid_walk?("nnn") #=> false
puts valid_walk?("nenessww") #=> true 