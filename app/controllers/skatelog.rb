
############################ INDEX ######################################
get '/' do
  redirect '/index'
end

get '/index' do
  @skatelogs = Skatelog.all
  erb :index
end



#################### Profile Page ############################################

get "/show" do
  erb :show
end

post "/show" do

end

put "/users/new" do
  skatelog = Skatelog.create(params[:skatelog])
  redirect "/show"

end

##################### Add New Post ##########################################

get '/users/new' do
  erb :new
end

post '/users/new' do

  skatelog = Skatelog.create(params[:skatelog])


end


##################### Delete Post #############################################

get '/user/:id/delete' do
  erb :delete
end
