##### User Routes: #####

# Register:
get '/users/new' do
  erb :"users/new"
end

# Register Success?
post '/users' do
  @user = User.new(params[:info])
  if @user.save
    session[:user_id] = @user.id
    redirect '/'
  else
    @errors = @user.errors.full_messages
    erb :"index"
  end
end
