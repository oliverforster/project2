class Tables < ActiveRecord::Migration
  def change
      create_table :users do |t|
        t.string :username
        t.string :full_name
        t.string :email
        t.date   :start_date
        t.string :type
        t.string :password_digest
      end
    end
end
