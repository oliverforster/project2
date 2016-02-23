class RecipeColumnChange < ActiveRecord::Migration
  def change
    rename_column :recipes, :ingriedients, :ingredients
  end
end
