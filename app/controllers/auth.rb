get '/' do
  redirect "/index"
end

##################### WELCOME PAGE#########################################
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

# post '/login' do
#   erb :login
# end

# I need a seperate post for the signup page, but is that a post '/index'?


####################### LOGIN PAGE #############################################

get '/login' do
  erb :login
end
#this get route isnt needed anymore

post '/login' do
  user = User.find_by(email: params[:user][:email])
  	if user.try(:authenticate, params[:user][:password])
    	session[:id] = user.id
		  if request.xhr?
    		erb :welcome, layout: false
		  else
  		  redirect '/signup'
 		 end
 		end
end

####################### SIGNUP PAGE #######################################
get '/signup' do
  erb :signup
end

post '/signup' do
  user = User.create(params[:user])

  if user.save
    session[:id] = user.id
    if request.xhr?
      erb :welcome, layout: false
    else
      redirect '/signup'
    end
  end
end

############################# LOGOUT ####################################
get '/logout' do
  session[:id] = nil
  redirect '/'
end


