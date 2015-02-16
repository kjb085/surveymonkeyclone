require_relative '../spec_helper'


describe "Survey Spec" do
  let(:survey) {Survey.create(id: 1 ,user_id: '2' ,title:'Yes or NO?',ans_percents: [50,60,100])}

  before do
    survey
  end

  it 'should respond to /surveys/:id' do
    get "/surveys/#{survey.id}"
    expect(last_response.status).to eq(200)
    expect(last_response.body).to include("Yes or No?")
  end
end