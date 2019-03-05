user1 = User.create(name: "david", password: "password")
user2 = User.create(name: "camille", password: "12345")

meal1 = Meal.create(name: "French Toast", meal_type: "Breakfast", user_id: 1)
meal2 = Meal.create(name: "Scrambled eggs", meal_type: "Lunch", user_id: 2)

ingredient1 = Ingredient.create(name: "bread", calories: 5)
ingredient2 = Ingredient.create(name: "eggs", calories: 2)

meal_ingredient1 = MealIngredient.create(meal_id: 1, ingredient_id: 1)
meal_ingredient2 = MealIngredient.create(meal_id: 2, ingredient_id: 2)
