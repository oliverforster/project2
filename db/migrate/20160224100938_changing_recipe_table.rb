class ChangingRecipeTable < ActiveRecord::Migration
  def change
    add_column :users, :profile_pic, :string
    add_column :recipes, :recipe_pic, :string
    add_column :recipes, :chef_id, :integer
  end
end
