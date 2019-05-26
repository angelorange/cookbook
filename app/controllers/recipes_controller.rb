class RecipesController < ApplicationController
  def show
    @recipe = set_recipe()
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      flash[:alert] = 'Receita criada'
      redirect_to recipe_path(@recipe)
    else
      flash[:alert] = 'Policia do zap, parado'
      render :new
    end
  end
  
  def new
    @recipe = Recipe.new
  end

  private

  def set_recipe
    recipe = Recipe.find(params[:id])
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, :recipe_type, :cuisine, :difficulty, :cook_time, :ingredients, :cook_method)
  end
end
