# ********************************* Enumerable *************************************

# **************************** Array ********************************

months = ["Jan", "Feb", "Mar", "Apr"]
# 1-
#months.each{|month| puts month} # Used to print a singel line

##############################
# 2-
#  months.each do |month|    # Used to print multiple lines
#     puts month + "!"
#     puts "----"
#  end
#######################

# 3-
# months.each_with_index do |month, idx|
#     puts month
#     puts idx
#     puts "******"
# end

# **************************** String ********************************

sentence = "hello world"
sentence.each_char do |char|
    puts char
end