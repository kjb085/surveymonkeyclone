get '/' do
  erb :welcome
end

get '/surveys' do
  @surveys = Survey.all
  erb :survey
end

get '/surveys/new' do
  erb :create_survey

end


