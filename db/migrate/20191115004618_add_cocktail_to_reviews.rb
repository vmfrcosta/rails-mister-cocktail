class AddCocktailToReviews < ActiveRecord::Migration[5.2]
  def change
    add_reference :reviews, :cocktail, foreign_key: true
  end
end
