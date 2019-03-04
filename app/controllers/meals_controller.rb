class MealsController < ApplicationController
  def index
    @meals = Meal.all
  end

  def show
    @meal = Meal.find(params[:id])
  end

  def new
    @meal = Meal.new
  end

  def create
    meal = Meal.create(meal_params)
    redirect_to meals_path
  end

  def edit
    @meal = Meal.find(params[:id])
  end

  def update
    meal = Meal.find(params[:id])
    meal.update(meal_params)
    redirect_to user_path(meal)
  end

  def destroy
    meal = Meal.find(params[:id])
    meal.delete
    redirect_to meals_path
  end

  private

  def meal_params
    params.require(:meal).permit(:name, :meal_type)
  end
end
