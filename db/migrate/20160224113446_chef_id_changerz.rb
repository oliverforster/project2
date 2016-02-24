class ChefIdChangerz < ActiveRecord::Migration
  def change
    remove_column :recipes, :string
    add_column :recipes, :chef_id, :string
  end
end
