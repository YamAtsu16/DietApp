class RecipesController < ApplicationController
  def index
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to recipes_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def recipe_params
    params.require(:recipe).permit(:recipe_name, :text, :calorie, :protein, :fat, :carbo).merge(user_id: current_user.id)
  end

end
