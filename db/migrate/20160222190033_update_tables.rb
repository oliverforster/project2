class UpdateTables < ActiveRecord::Migration
  def change
    rename_table :reicipes_users, :recipes_users
    remove_column :recipes, :chef_id
  end
end
