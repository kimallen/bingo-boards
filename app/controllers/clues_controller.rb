#INDEX
get '/games/:game_id/clues' do

end

#SHOW FORM
get '/games/:game_id/clues/new' do

end
#CREATE
post '/games/:game_id/clues' do
	@clue = Clue.new(params[:clue])
	if request.xhr?
		if @clue.save
			erb :_clue_view, layout: false, locals: {clue: @clue}
		else
			flash[:clue_error] = "Must not be blank"
		end
	else
		if @clue.save
			redirect "/games/#{@clue.game_id}"
		else
			flash[:clue_error] = "Must not be blank"
		end
	end
end

#SHOW
get '/games/:game_id/clues/:id' do

end

#EDIT
get '/games/:game_id/clues/:id/edit' do

end

#UPDATE
put '/games/:game_id/clues/:id' do

end

#DELETE
delete '/games/:game_id/clues/:id' do

end
