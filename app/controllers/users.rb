get '/users/new' do
  erb :'/users/new'
end

post '/users' do
  @user = User.new(params[:user])
  if @user.save
    session[:user_id] = @user.id
    # redirect "/users/#{@user.id}"
    redirect "/users/#{@user.id}"
  else
    @errors = @user.errors.full_messages
    erb :'/users/new'
  end
end

get '/login' do
  @user = User.new
  erb :'/users/login'
end

post '/login' do
  @user = User.authenticate(params[:user])
  if @user
    session[:user_id] = @user.id
    redirect "/users/#{@user.id}"
  else
    @errors = ["Failed login attempt."]
    erb :'/login'
  end
end

get '/logout' do
  session.delete(:user_id)
  redirect '/'
end

get '/users/:id' do
if logged_in?
    # "Profile page"
    # display list of users auctioned items
    # @listed_items = Item.where(seller_id: current_user.id)
    erb :'users/show'
  else
    redirect '/login'
  end
end
