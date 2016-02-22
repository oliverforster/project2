class UpdateTablesAgain < ActiveRecord::Migration
  def change
    rename_column :recipes_users, :reicipe_id, :recipe_id
  end
end
