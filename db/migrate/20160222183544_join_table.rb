class JoinTable < ActiveRecord::Migration
  def change
    create_join_table :reicipes, :users
  end
end
