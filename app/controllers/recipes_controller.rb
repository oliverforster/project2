get '/recipes' do

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
  if @recipe.save
    redirect "/recipes"
  end
end