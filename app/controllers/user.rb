get '/users/:id' do
  if session[:id]
  	@user = current_user
  	erb :user_show
  else
  	redirect '/login'
  end
end


get '/users/:id/edit' do
  @user = current_user
  erb :user_edit
end

put '/users/:id' do

end


# Change these to use AJAX instead
get '/users/:id/delete' do

end

delete '/users/:id' do

end