class ChallengeTable < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.string :name
      t.string :information
    end
  end
end
