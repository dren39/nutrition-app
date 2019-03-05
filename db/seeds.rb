user1 = User.create(name: "david", password: "password")
user2 = User.create(name: "camille", password: "12345")

meal1 = Meal.create(name: "French Toast", meal_type: "Breakfast")
meal2 = Meal.create(name: "Scrambled eggs", meal_type: "Lunch")
meal3 = Meal.create(name: "Chicken Broccoli", meal_type: "Breakfast")
meal4 = Meal.create(name: "Fried Rice", meal_type: "Lunch")
meal5 = Meal.create(name: "Soup", meal_type: "Lunch")

ingredient1 = Ingredient.create(name: "bread", calories: 10)
ingredient2 = Ingredient.create(name: "eggs", calories: 28)
ingredient3 = Ingredient.create(name: "Chicken", calories: 56)
ingredient4 = Ingredient.create(name: "broccoli", calories: 22)
ingredient5 = Ingredient.create(name: "chicken stock", calories: 46)
ingredient6 = Ingredient.create(name: "rice", calories: 55)

meal_ingredient1 = MealIngredient.create(meal_id: 1, ingredient_id: 1)
meal_ingredient2 = MealIngredient.create(meal_id: 2, ingredient_id: 2)
meal_ingredient3 = MealIngredient.create(meal_id: 3, ingredient_id: 1)
meal_ingredient4 = MealIngredient.create(meal_id: 3, ingredient_id: 2)
meal_ingredient5 = MealIngredient.create(meal_id: 4, ingredient_id: 4)
meal_ingredient6 = MealIngredient.create(meal_id: 5, ingredient_id: 2)
meal_ingredient7 = MealIngredient.create(meal_id: 1, ingredient_id: 3)
meal_ingredient8 = MealIngredient.create(meal_id: 2, ingredient_id: 5)
meal_ingredient9 = MealIngredient.create(meal_id: 3, ingredient_id: 6)
meal_ingredient10 = MealIngredient.create(meal_id: 6, ingredient_id: 2)
meal_ingredient11 = MealIngredient.create(meal_id: 4, ingredient_id: 6)
meal_ingredient12 = MealIngredient.create(meal_id: 5, ingredient_id: 4)

usermeal1 = UserMeal.create(user_id: 1, meal_id: 1)

usermeal3 = UserMeal.create(user_id: 1, meal_id: 4)

usermeal6 = UserMeal.create(user_id: 1, meal_id: 1)

usermeal8 = UserMeal.create(user_id: 1, meal_id: 4)

usermeal10 = UserMeal.create(user_id: 1, meal_id: 5)

usermeal12 = UserMeal.create(user_id: 1, meal_id: 4)
