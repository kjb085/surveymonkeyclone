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
  erb :edit_user
end

put '/users/:id' do |id|

  params[:edit].delete_if do |key, value|
  	value == ""
  end

  User.find(id).update_attributes(params[:edit])

  redirect "/users/#{id}"
end


# Change these to use AJAX instead
get '/users/:id/delete' do

  erb :delete_user

end

delete '/users/:id' do |id|

  User.find(id).destroy
  redirect '/login'

end