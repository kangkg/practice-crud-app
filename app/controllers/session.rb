# Optional: Login Page
get '/session/new' do
  erb :'session/new'
end

# Logging in check. (careful: :info)
post '/session' do
  # in my bcrypt, this will return a User object:
  @user = User.authenticate(params[:info][:username], params[:info][:password])
  if @user
    session[:user_id] = @user.id
    redirect '/'
  else
    @errors = ["Invalid login info."]
    erb :'index'
  end
end

# logout
delete '/session' do
  session[:user_id] = nil
  redirect '/'
end
