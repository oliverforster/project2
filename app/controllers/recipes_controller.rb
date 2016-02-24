get '/recipes' do
  @recipes = Recipe.all
  erb :'recipes/index'
end


get '/recipes/new' do
  @recipe = Recipe.new
  erb :'recipes/new'
end

post '/recipes' do
  @recipe = Recipe.new(params[:recipe])
  @recipe.chef_id = current_user.id
  if @recipe.save
    redirect "/challenges/#{@recipe.challenge_id}"
  end
end

get "/recipes/:id/edit" do
  @recipe = Recipe.find(params[:id])
  erb :"recipes/edit"
end

put '/recipes/:id' do
  @recipe = Recipe.find(params[:id])
  if @recipe.update(params[:recipe])
    redirect "/recipes/#{@recipe.id}"
  else
    erb :"recipes/show"
  end
end

get '/recipes/:id' do
  @recipe = Recipe.find(params[:id])
  @chef = @recipe.chef_id
  erb :'recipes/show'
end

post '/recipes/:id/like' do
  @recipe = Recipe.find(params[:id])
  @recipe.users << current_user
  @chef = @recipe.users
  erb :'recipes/show'
  redirect "/recipes/#{@recipe.id}"
end

delete "/recipes/:id" do

  recipe = Recipe.find(params[:id])
  recipe.destroy

  redirect "/recipes"
end




