get '/surveys/new' do

  erb :create_survey

end

post '/surveys/create' do


  @survey = Survey.create(user_id: session[:id], title: params[:title])


   session[:question_count].times do |i|

    p "get on our level ZACK!!!!!!!!!"

    params["q#{i}".to_sym][:survey_id] = @survey.id
    Question.create( params["q#{i}".to_sym]  )

  end


  redirect "/surveys/#{@survey.id}"

end


get '/surveys/new/add_question' do

 @question_count = params[:qCount].to_i

 session[:question_count] = @question_count + 1

 erb :_add_questions, :layout => false

end

get '/surveys/:id/edit' do |id|

  @survey = Survey.find(id)
  erb :edit_survey

end

put '/surveys/:id' do |id|

  p "*"*30
  p params
  p "*"*30

  Survey.find(id).update_attributes(params[:survey])

  Survey.find(id).questions.each_with_index do |question, index|
  	question.update_attributes(params["q#{index}".to_sym])
  end

  redirect "/surveys/#{id}"

end

# AJAX Route
delete '/surveys/:id' do |id| 

  p "*"*30
  p params
  p "*"*30

  Survey.find(id).destroy

  @user = current_user

  erb :_user_surveys, :layout => false

end