class RecipesController < ApplicationController
  def show
    @recipe = set_recipe()
  end

  private

  def set_recipe
    recipe = Recipe.find(params[:id])
  end
end
