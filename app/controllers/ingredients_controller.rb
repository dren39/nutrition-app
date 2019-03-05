class IngredientsController < ApplicationController
  def index
   if params[:search] == nil
    @ingredients = Ingredient.all
   elsif params[:search] == ""
    @ingredients = Ingredient.all
   elsif params[:search][0] != ""
    ingredient_list = Ingredient.all
    @ingredients = Ingredient.search_results(params[:search], ingredient_list)
   else
    @ingredients = Meal.where(name: params[:search])
   end
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    ingredient = Ingredient.create(ingredient_params)
    redirect_to ingredients_path
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
  end

  def update
    ingredient = Ingredient.find(params[:id])
    ingredient.update(ingredient_params)
    redirect_to user_path(ingredient)
  end

  def destroy
    ingredient = Ingredient.find(params[:id])
    ingredient.delete
    redirect_to ingredients_path
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name, :calories)
  end
end
