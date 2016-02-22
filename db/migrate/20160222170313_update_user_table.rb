class UpdateUserTable < ActiveRecord::Migration
  def change
    add_column :users, :recipes, :string
  end
end
