get '/surveys/:id' do |id|
  @survey = Survey.find(id)
  @q_count = @survey.questions.count
  @current_q = 1
  erb :take_survey
end

post '/surveys/:id/answer/:answer_id' do |answer_id|
  # locally store num of yes-es and num of nos
  # maybe need the table that we discussed as answers or use session
  if answer_id == 1
    
  elsif answer_id == 0

  else 
    puts "ERROR"
  end



end

post '/surveys/:id/complete' do |id|
  # move all temp held answers into the survey database and increment the times taken by 1
  # find a way to make sure all answers are populated before submit is allowed
end

get '/survey/:id/new_question' do |id|
  @question = Survey.find(id).questions.find( #next question 
  # I think this is the route that I'm going to use to cycle the question
end

