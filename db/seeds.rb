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
  name: "Pasta Challenge",
  information: "create a pasta dish"
  }].each do |challenge|
    Challenge.create!(challenge)
end

u_oli = User.create(username: "Oli",
                    full_name: "Oli Forster",
                    email: "oliforster798@gmail.com",
                    start_date: "2012",
                    user_type: "chef",
                    profile_pic: "http://static.fjcdn.com/pictures/Barak+oli_40cb9a_4918779.jpg",
                    password: "hello") 

u_max = User.create(username: "Maxxx",
                    full_name: "Max Hilliard",
                    email: "max@gmail.com",
                    start_date: "2002",
                    user_type: "chef",
                    profile_pic: "http://amahighlights.com/wp-content/uploads/gordon-ramsay.jpg",
                    password: "hello") 


r_cake1 = Recipe.create(challenge_id: Challenge.first.id,
                        chef_id: u_oli.id,
                        method: "Trim, halve and chop the leek into chunks, and peel the garlic.<br> Put a large pan of salted water on to boil, then drop in the leek and garlic cloves. Cook for 3 minutes, then add your cavolo nero, kale or cabbage. Cook for another 3 to 3½ minutes, but no more! Don’t be tempted.<br>Using tongs or a slotted spoon, move the veg to a liquidiser – it’s OK if a bit of water comes with it. Add your oil and liquidise until you’ve got a vivid green purée, the same consistency as double cream. If it’s a bit too dry, add a splash of the cooking water. Have a taste, season with sea salt and black pepper, then put aside.<br>Bring the water back to boil, and cook the pasta according to the packet instructions.<br>Drain and return the pasta to the pan, add the sauce and allow it to simmer over a medium-low heat for 30 seconds.<br>As it comes back to the boil, remove from the heat and finely grate in the Parmesan. Be quick, so your pasta doesn’t overcook, then check the balance of cheese, salt and pepper.<br>Finely grate over extra Parmesan, then serve on a big platter and eat as soon as possible.",
                        ingredients: "1 large leek<br>6 cloves of garlic<br>2 large handfuls of cavolo nero, curly kale or savoy cabbage<br>100 ml extra virgin olive oil<br>500g dried pasta, such as penne, linguine or spaghetti<br>100g Parmesan cheese",
                        recipe_pic: "http://cdn.jamieoliver.com/recipe-database/430_575/CaIW2UumqP89ZYr1_w6MRF.jpg",
                        name:"World’s most elegant winter pasta")

r_cake2 = Recipe.create(challenge_id: Challenge.first.id,
                        chef_id: u_oli.id,
                        method: "If you are cooking this just before you eat, put the water for the penne on to boil before you start the sauce. You will need a big pan, enough to take the pasta and its sauce later.<br>Finely chop the onion, either by hand or in a processor. In a large pan, heat the garlic oil and add the finely chopped onion and a good sprinkling of salt. Cook the onion fairly gently for about 15 minutes without letting it catch and burn, which just means giving it a stir every now and again. It should be very soft and almost beginning to caramelize.<br>Tip in the cans of chopped tomatoes and continue cooking over a gentle heat, simmering for another 15-20 minutes. If you're cooking this ahead, and I always do, stop here.<br>Reheat the almost-finished tomatoes (or just continue as you were if you're making this in one unbroken fluid movement), stir in the double cream and take the pan off the heat. When the water for the pasta comes to the boil add a good measure of salt and tip in the penne. Set a timer for 3-4 minutes less than the packet instructions for cooking it, as you want to make sure it's cooked al dente and will need to start tasting early.<br>Drain the cooked pasta, tip it back in the pan and pour over the vodka, and add the butter and some more salt. Turn the penne in the vodka and melting butter and then tip it into the tomato sauce unless it is easier to pour the tomato sauce over the pasta: it depends on the sizes of pans you are using.<br>Toss the pasta in the sauce until it is evenly coated and turn out into a large, warmed bowl. Put it on the table along with a block of Parmesan and a grater.",
                        ingredients: "1 large onion<br>2 tablespoons garlic infused olive oil<br>salt (for pasta water, to taste)<br>820 grams canned chopped tomatoes<br>2 tablespoons double cream<br>1 kilogram penne rigate (or other short preferably ridged pasta)<br>125 ml vodka<br>4 tablespoons unsalted butter<br>parmesan cheese (for grating over at the table)<br>",
                        recipe_pic: "http://assets.nigella.com/uploads/b6a4d1ca_6510_4421_a8d9_a7931c85649f/main.jpg",
                        name:"Penne alla vodka")

r_cake3 = Recipe.create(challenge_id: Challenge.first.id,
                        chef_id: u_max.id,
                        method: "Prick the whole, fresh chillies all over with a small sharp knife and add to a large frying pan. Cover with about 1cm of oil and let them sit on a really low heat – almost so they’re coddling – for about 10 minutes.<br>Once they’ve softened, and the oil has taken a lot of the chilli flavour, pour away most of the oil (save it in a jar for a lovely chilli oil).<br>Peel and finely slice the garlic, then add to the pan with the anchovies and oregano. Fry gently for a few minutes.<br>Stir in the tinned tomatoes or passata, then bring everything to the boil. Be careful not to break the chillies — this will make the sauce very hot!<br>Meanwhile, cook your pasta according to the packet instructions and get started on the pangrattato.<br>Tear the bread into a food processor and blitz with a pinch of sea salt to make fine crumbs.<br>Peel and crush the garlic, then add to a large pan with a good lug of oil on a medium heat. Allow it to flavour the oil, then chop and add a few pinches of dried chilli.<br>After a minute or two add the breadcrumbs, then toss so everything gets coated in the garlic oil. Fry for 5 to 7 minutes, or until you’ve got crisp, golden breadcrumbs.<br>Take the pan off the heat, leaving the breadcrumbs in there to stay warm.<br>Drain the pasta, then add to the large pan with your sauce. Toss quickly to coat.<br>Divide everything between bowls (making sure everyone gets a softened whole chilli). Sprinkle over some pangrattato and get stuck in.",
                        ingredients: "4 fresh red chillies<br>olive oil<br>2 cloves of garlic<br>3 anchovies, from sustainable sources<br>1 teaspoon dried oregano<br>1 x 400g tin of plum tomatoes or 400g passata<br>400g dried pasta",
                        recipe_pic: "http://cdn.jamieoliver.com/recipe-database/430_575/AS3i1siAqzN9rT0fJKEpX3.jpg",
                        name:"Double Whammy Arrabbiata")