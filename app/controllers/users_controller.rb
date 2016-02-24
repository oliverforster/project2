get "/users" do
  @users = User.all
  erb :"users/index"
end

get '/users/:id' do  
  @user = User.find(params[:id])

  erb :'/users/show'
end

get "/users/:id/edit" do
  authorize!
  @user = User.find(params[:id])
  erb :"users/edit"
end

put '/users/:id' do
  authorize!
  @user = User.find(params[:id])
  if @user.update(params[:user])
    redirect "/users/#{@user.id}"
  else
    erb :"users/show"
  end
end