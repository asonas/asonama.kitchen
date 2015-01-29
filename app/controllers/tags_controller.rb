class TagsController < ApplicationController

  def create
    recipe = Recipe.find params[:tag][:recipe_id]
    tag = Tag.create tag_params
    recipe.tags << tag
    redirect_to recipe
  end

  def delete
    recipe = Recipe.find params[:recipe_id]
    recipe.tags.find(params[:id]).destroy
  end

  private
  def tag_params
    params.require(:tag).permit(:name)
  end
end
