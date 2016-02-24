class ChefIdChanger < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    remove_column :recipes, :chef_id
  end
end
