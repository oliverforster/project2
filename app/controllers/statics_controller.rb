get '/' do
  @challenge = Challenge.first
  @users = User.all  
  erb :'/static/home'
end
