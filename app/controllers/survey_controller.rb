get '/surveys/new' do

  erb :create_survey

end

post '/surveys/create' do


  session[:id] = 1

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