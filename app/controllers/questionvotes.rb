post '/questionvotes/vote' do
	if logged_in?
		@input = add_user_id(params[:questionvote])
		@questionvote = QuestionVote.create!(@input)
		redirect to("/questions/#{@input["question_id"]}")
	else
		render :status => 401
	end
end
