class RecipeTable < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.integer :challenge_id
      t.integer :chef_id
      t.string  :votes
      t.text    :method
    end
  end
end
