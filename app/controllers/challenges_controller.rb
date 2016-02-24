# INDEX
get "/challenges" do
  @challenges = Challenge.all
  erb :"challenges/index"
end


# SHOW
get "/challenges/:id" do
  @challenge = Challenge.find(params[:id])
  @recipes = @challenge.recipes
  if @challenge
    erb :"challenges/show"
  else
    redirect "/challenges"
  end
end
