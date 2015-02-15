
############################ INDEX ######################################
get '/' do
  redirect '/index'
end

get '/index' do
  @skatelogs = Skatelog.all
  erb :index
end

##################### Add New Post ##########################################

get '/users/new' do
  erb :new
end

post '/users/new' do

  skatelog = Skatelog.create(skatelog[:params])


end



#################### Profile Page ############################################

get "/show" do
  erb :show
end


put "/users/new" do
  skatelog = Skatelog.create(skatelog[:params])
  redirect "/show"

end
