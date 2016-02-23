class UpdateTablesMore < ActiveRecord::Migration
  def change
    remove_column :users, :start_date
    add_column :users, :start_date, :integer
    remove_column :users, :username
    add_column :users, :username, :string, uniqueness: true
  end
end
