class Meal < ApplicationRecord
  has_many :user_meals
  has_many :users, through: :user_meals

  has_many :meal_ingredients
  has_many :ingredients, through: :meal_ingredients

  def calory_calculator
    calories_array.inject(0){|sum,x| sum + x }
  end
  def calories_array
    self.ingredients.map{|ingredient| ingredient.calories}
  end
  ## -----------------CLASS METHODS------------------
  def self.search_results(search_term, meal_list)
    result = []
    meal_list.each do |meal|
      # byebug
      distance = Levenshtein.distance(search_term.downcase, meal.name.downcase)
      if distance < 6
        result << meal
      end
    end
    result
  end
end
