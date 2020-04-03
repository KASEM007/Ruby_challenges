=begin 
Write a method to_initals that takes in a person's name string and return
a string represting their initials 
=end

def to_initals(name)

    init = ""
    parts = name.split(" ")

    parts.each do |i|
        init = init + i[0]
    end
    return init

end
 puts to_initals ("Kelvin Bridges")
 puts to_initals ("Michaela Yamamoto")
 puts to_initals ("Mary La Grange"  )


