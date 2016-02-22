# get the login form
get '/login' do
  @user = User.new
  erb :'sessions/new'
end

# handle the form
post '/login' do
# find user by email address
user = User.find_by_email(params[:user][:email])
# if there is a user, check password
  if user && user.authenticate(params[:user][:password])
    # log the user in
    session[:user_id] = user.id
    flash[:success] = "Welcome!"
    redirect "/users/#{user.id}"
  else
    # otherwise render login again
    flash[:danger] = "Username or password incorrect"
    redirect "/login"
  end
end

# destroy the session
get '/logout' do
  session.clear
  redirect "/login"
end