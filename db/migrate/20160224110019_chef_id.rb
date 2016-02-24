class ChefId < ActiveRecord::Migration
  def change
    rename_column :recipes, :chef_id, :string
  end
end
