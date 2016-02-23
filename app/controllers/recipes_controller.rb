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
    current_user.recipes << @recipe
    redirect "/recipes"
  end
end

get '/recipes/:id' do
  @recipe = Recipe.find(params[:id])
  @chef = @recipe.users
  erb :'recipes/show'
end




