get '/recipes' do
  @recipes = Recipe.all
  erb :'recipes/index'
end

get 'recipes/:id' do


  erb :'recipes/show'
end

get '/recipes/new' do
  erb :'recipes/new'
end

post '/recipes' do
  @recipe = Recipe.new(params[:recipe])
  if @recipe.create
    redirect "/recipes"
  end
end