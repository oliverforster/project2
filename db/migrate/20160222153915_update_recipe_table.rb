class UpdateRecipeTable < ActiveRecord::Migration
  def change
    add_column :recipes, :ingriedients, :text
    add_column :recipes, :name, :string
  end
end
