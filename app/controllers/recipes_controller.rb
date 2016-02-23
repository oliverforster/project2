get '/recipes' do
  @recipes = Recipe.all
  erb :'recipes/index'
end

get 'recipes/:id' do
  @recipe = Recipe.find(params[:id])
  erb :'recipes/show'
end

get '/recipes/new' do
  @recipe = Recipe.new
  erb :'recipes/new'
end

post '/recipes' do
  @recipe = Recipe.new(params[:recipe])
  if @recipe.save
    redirect "/recipes"
  end
end