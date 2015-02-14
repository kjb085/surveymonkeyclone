get '/' do
  redirect "/index"
end

get '/index' do
  erb :welcome
end


get '/surveys' do
  @surveys = Survey.all
  erb :survey
end

get '/surveys/new' do
  erb :create_survey
end

post '/login' do
  erb :login
end

# I need a seperate post for the signup page, but is that a post '/index'?


get '/login' do
  erb :login
end

post '/login' do
  user = User.find_by(params[:user][:email])

  if user.try(:authenticate, params[:user][:password])
    #why is this user_id? did i have to set that somewhere else?
    session[:id] = user.id
    redirect '/'
  else
    redirect '/signup'
  end
end

get '/signup' do
  @user = User.create(params[:user])


end

post '/signup' do
  erb :signup
end


get '/logout' do


end


