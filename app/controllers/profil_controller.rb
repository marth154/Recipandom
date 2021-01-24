class ProfilController < ApplicationController
  def index
    @profils = User.all

    @id = cookies.permanent.signed[:remember_token][0]
    
    @user = User.find(@id)

    @favorites = Favorite.where(user: @user)

    @recipes = Recipe.where(creator: @id)

    @recipeIngredients = RecipeIngredient.all

    @recipe_favorites = Recipe.joins(:favorites).where(favorites:{user_id: @id})
  end
end
