# INDEX
get "/challenges" do
  @challenges = challenge.all
  erb :"challenges/index"
end


# SHOW
get "/challenges/:id" do
  @challenge = challenge.find(params[:id])
  if @challenge
    erb :"challenges/show"
  else
    redirect "/challenges"
  end
end
