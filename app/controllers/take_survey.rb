get '/surveys/:id' do |id|
  @survey = Survey.find(id)
  @q_count = @survey.questions.count
  @current_q = 1
  session[:yes] = 0
  session[:no] = 0
  erb :take_survey
end

post '/surveys/:id/answer_question' do
  # locally store num of yes-es and num of nos
  # maybe need the table that we discussed as answers or use session
  "*"*30
  p params
  "*"*30
  
  # if params[:yes]
  #   put "yes"
  #   session[:yes] += 1
  # elsif answer_id == 0
  #   put "no"
  #   session[:no] += 1
  # else 
  #   puts "ERROR"
  # end

end

# Maybe make a method that constantly checks the value of the sum of session yes & no vs the count of the questions in the survey

# Maybe have a x/total view on the page to show how far through the survey you are

post '/surveys/:id/complete' do |id|
  # move all temp held answers into the survey database and increment the times taken by 1
  # find a way to make sure all answers are populated before submit is allowed
end

get '/survey/:id/new_question' do |id|
  @question = Survey.find(id).questions.find() #next question 
  # I think this is the route that I'm going to use to cycle the question
end

