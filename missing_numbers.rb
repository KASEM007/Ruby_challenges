=begin
    Missing Numbers
    Given an array of unique integers ordered from least to greatest,
    write a function that determines which integers are still needed to
    fill in  the consecutive set
    Examples:
    missing_numbers([1, 3]) # => [2]
    missing_numbers([2, 3, 7]) # => [4, 5, 6]
    missing_numbers([-5, -1, 0, 3]) # => [-4, -3, -2, 1, 2]
=end
def missing_numbers(arr)
    new_arr = []
    min = arr.first
    max = arr.last
    (min..max).each do |num|
        if !arr.include?(num)
            new_arr << num
        end
    end
    return new_arr 
end

p missing_numbers([1, 3]) # => [2]
p missing_numbers([2, 3, 7]) # => [4, 5, 6]
p missing_numbers([-5, -1, 0, 3]) # => [-4, -3, -2, 1, 2]