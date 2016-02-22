class User < ActiveRecord::Base
  has_many :voted, class_name: "Recipe", foreign_key: "votes"
  has_many :owned_recipe, class_name: "Recipe", foreign_key: "chef_id"

  def recipe
    if(user_type == "visitor")
      voted
    else
      owned_recipe
    end
  end
end