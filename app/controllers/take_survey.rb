get '/surveys/:id' do |id|
  @survey = Survey.find(id)
  @questions = @survey.questions.all
  erb :take_survey
end

# Reserved for later implementation of AJAX to cycle questions
# 
# get '/surveys/:id/next_question' do |id|
#   erb :_show_next_question, :layout => false
# end

put '/surveys/:id' do |id|

  survey = Survey.find(id)

  total_questions = survey.questions.count

  if params[:answers].length == total_questions
  	params[:answers].each_value do |answer|
  	  if answer == "yes"
  	  	survey.yes_num += 1
  	  elsif answer == "no"
  	  	survey.no_num += 1
  	  else
  	  	nil
  	  end
	  end
	
	  survey.num_taken += 1
    survey.save

    redirect '/surveys'
  else
  	# Create something on the page with jquery that indicates that all questions need to be answered
  	redirect '/surveys/#{id}'
  end
end

