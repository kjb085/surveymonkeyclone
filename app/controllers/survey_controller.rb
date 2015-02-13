get '/surveys/new' do

  erb :create_survey

end

post '/surveys/create' do
  session[:id] = 1
  @survey = Survey.create(user_id: session[:id], title: params[:title])

  @question = Question.create(survey_id: @survey.id, content: params[:content])

  redirect "/surveys/#{@survey.id}"

end


get '/surveys/new/add_question' do
  puts 'CHRIS AHHHHHHHHH'

  erb :_add_questions, :layout => false

end