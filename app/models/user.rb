class User < ActiveRecord::Base
  include BCrypt
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true

  has_and_belongs_to_many :recipes
  has_many :created_recipes, foreign_key: "chef_id", class_name: "Recipe"

  def can_vote?(recipe)
    !recipe.users.include?(self) || recipe.chef != self
  end

  def is_chef?
    user_type == 'chef'
  end

  has_secure_password

end