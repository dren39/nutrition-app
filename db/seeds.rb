user1 = User.create(name: "david")
user2 = User.create(name: "camille")

meal1 = Meal.create(name: "French Toast", meal_type: "Breakfast")
meal2 = Meal.create(name: "Scrambled eggs", meal_type: "Lunch")

ingredient1 = Ingredient.create(name: "bread", calories: 5)
ingredient2 = Ingredient.create(name: "eggs", calories: 2)

# meal_ingredient1 = MealIngredient.create(meal_id: 1, ingredient_id: 1)
# meal_ingredient2 = MealIngredient.create(meal_id: 2, ingredient_id: 2)
