def favorite_movie(movie = "Star Wars")
    
      puts "My favorite movie is #{movie}"
end

def favorite_food(food = "Prime Rib")
    # TODO: use string interpolation to print "My favorite food is " and include the food parameter.
    puts "My favorite food is #{food}"
end

def favorite_drink(drink = "Tequilla")
    # TODO: use string interpolation to print "My favorite drink is " and include the drink parameter.
    puts "My favorite drink is #{drink}"
end

def list_of_favorite_things(movie, food, drink)
    # TODO: Call favorite_movie, pass in the parameter movie as an argument
    # TODO: Call favorite_food, pass in the parameter food as an argument
    # TODO: Call favorite_drink, pass in the parameter drink as an argument

    favorite_movie(movie)
    favorite_food(food)
    favorite_drink(drink)
end

list_of_favorite_things("The Thing", "spaghetti", "water")