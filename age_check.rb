age = 42
# case age
# when 0 .. 14
#     puts " Child"
# when 15 .. 24
#     puts "Youth"
# when 25 .. 64
#     puts "Adult"
# else
#     puts "senior"
# end
#########################################
#########################################
def age_check (age)
    if age <= 14
        puts "Child"
    elsif age <= 24
        puts "Youth"
    elsif age <= 64
        puts "Adult"
    else puts "senior"
    end 
end
puts age_check(70)