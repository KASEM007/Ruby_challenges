=begin
    Dynamic Duos
    Write a method dynamic_duos that accepts a string as an argument 
    and returns the count of the number of times the same character 
    appears consecutively in the given string.

    Examples:
    dynamic_duos('bootcamp')      # 1
    dynamic_duos('wxxyzz')        # 2
    dynamic_duos('hoooraay')      # 3
    dynamic_duos('dinosaurs')     # 0
    dynamic_duos('e')             # 0
=end

# Complete the 'dynamicDuos' function below.
#
# The function is expected to return an INTEGER.
# The function accepts a STRING as parameter.
#

def dynamic_duos(string)
    # Write your code here
    i = 0
    count = 0
    
    while i < string.length
        char = string[i]
        if char == string[i + 1]
            
            count += 1
        end
        i += 1
    end
    return count


end

# "baseball" => 1 
p dynamic_duos('bootcamp')
p dynamic_duos('wxxyzz')
p dynamic_duos('hoooraay')
p dynamic_duos('dinosaurs')
p dynamic_duos('e')