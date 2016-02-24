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
  if @recipe.save
    @recipe.chef = 10
    redirect "/recipes"
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
end




