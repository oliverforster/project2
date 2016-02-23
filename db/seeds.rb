require_relative "../app/models/recipe.rb"
require_relative "../app/models/user.rb"
require_relative "../app/models/challenge.rb"



User.destroy_all
Recipe.destroy_all
Challenge.destroy_all

[
  {
    username: "Oli",
    full_name: "Oli Forster",
    email: "oliforster798@gmail.com",
    start_date: "2/21/2012",
    user_type: "chef",
    password: "hello"
  },
  {
    username: "Jay",
    full_name: "Jay Chauhan",
    email: "jay@hotmail.com",
    user_type: "visitor",
    password: "hello"

  },
  {
    username: "Carmen",
    full_name: "Carmen Carmona",
    email: "Carmen@yahoo.com",
    user_type: "visitor",
    password: "hello"
  }].each do |user|
  User.create!(user)
end

[
  {
    challenge_id: 1,
    method: "chop cook serve",
    ingredients: "flour eggs tomato",
    name:"cake1"
  },
  {
    challenge_id: 1,
    method: "chop cook serve",
    ingredients: "flour eggs cucumber",
    name:"cake2"
  }].each do |recipe|
  Recipe.create!(recipe)
end

[ {
  name: "cake challenge",
  information: "create a safe cake"
  }].each do |challenge|
    Challenge.create!(challenge)
end