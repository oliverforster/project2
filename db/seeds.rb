require_relative "../app/models/recipe.rb"
require_relative "../app/models/user.rb"
require_relative "../app/models/challenge.rb"



User.destroy_all
Recipe.destroy_all
Challenge.destroy_all

[
  {
    username: "Jay",
    full_name: "Jay Chauhan",
    email: "jay@hotmail.com",
    user_type: "visitor",
    profile_pic: "http://ichef.bbci.co.uk/naturelibrary/images/ic/credit/640x395/e/eu/eurasian_jay/eurasian_jay_1.jpg",
    password: "hello"

  },
  {
    username: "Carmen",
    full_name: "Carmen Carmona",
    email: "Carmen@yahoo.com",
    user_type: "visitor",
    profile_pic: "http://vignette4.wikia.nocookie.net/shrek/images/8/87/Shrek_fierce.jpg/revision/latest?cb=20100604223615",
    password: "hello"
  }].each do |user|
  User.create!(user)
end

[ {
  name: "cake challenge",
  information: "create a safe cake"
  }].each do |challenge|
    Challenge.create!(challenge)
end

u_oli = User.create(username: "Oli",
                    full_name: "Oli Forster",
                    email: "oliforster798@gmail.com",
                    start_date: "2/21/2012",
                    user_type: "chef",
                    profile_pic: "http://static.fjcdn.com/pictures/Barak+oli_40cb9a_4918779.jpg",
                    password: "hello") 

u_max = User.create(username: "Maxxx",
                    full_name: "Max Hilliard",
                    email: "max@gmail.com",
                    start_date: "2/21/2002",
                    user_type: "chef",
                    profile_pic: "http://amahighlights.com/wp-content/uploads/gordon-ramsay.jpg",
                    password: "hello") 


r_cake1 = Recipe.create(challenge_id: Challenge.first.id,
                        chef_id: u_oli.id,
                        method: "chop cook serve",
                        ingredients: "flour eggs tomato",
                        name:"cake1")

r_cake2 = Recipe.create(challenge_id: Challenge.first.id,
                        chef_id: u_oli.id,
                        method: "chop cook serve",
                        ingredients: "flour eggs cucumber",
                        name:"cake2")

r_cake3 = Recipe.create(challenge_id: Challenge.first.id,
                        chef_id: u_max.id,
                        method: "chop cook serve",
                        ingredients: "flour eggs potato",
                        name:"potatocake")