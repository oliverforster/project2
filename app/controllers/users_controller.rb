get "/users" do
  @users = User.all
  erb :"users/index"
end

get '/users/:id' do  
  @user = User.find(params[:id])

  if @user.is_chef?
    @recipes = @user.created_recipes
  else
    @recipes = @user.recipes
  end
  erb :'/users/show'
end


get "/users/:id/edit" do
  @user = User.find(params[:id])
  erb :"users/edit"
end

put '/users/:id' do
  @user = User.find(params[:id])
  if @user.update(params[:user])
    redirect "/users/#{@user.id}"
  else
    erb :"users/show"
  end
end

delete "/users/:id" do

  users = User.find(params[:id])
  session.clear
  users.destroy

  redirect "/login"
end