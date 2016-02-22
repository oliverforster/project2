class Recipe < ActiveRecord::Base
  belongs_to :chef, foreign_key: "chef_id", class_name: "User"
  belongs_to :visitor, foreign_key: "votes", class_name: "User"
end