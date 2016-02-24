class Recipe < ActiveRecord::Base
  has_and_belongs_to_many :users
  belongs_to :chef, class_name: "User", foreign_key: 'chef_id'
  belongs_to :challenge

  def votes
    users.count
  end
end