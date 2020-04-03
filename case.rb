def rate_my_food(food)
    case food

    when "Steak"
        "Pass the steak sauce! That's delicious"

    when "Sushi"
        "Great choice! my favorite food"

    when "Taco", "Burritos", "Quesadillas"
        "Cheesy and filling! The perfect cobimation"

    when "Tofu", "Brussel Sprouts"
        "Disgusting! Yuck"

    else 
        "I don't know about that food"
    end
end
puts rate_my_food("Steak")