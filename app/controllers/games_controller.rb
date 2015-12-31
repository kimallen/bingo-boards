#INDEX
get '/games' do
  @games = Game.all
  erb :'games/index'
end

#SHOW FORM
get '/games/new' do
  erb :'games/new'
end
#CREATE
post '/games' do
  
  @game = Game.new(params[:game])
 #  if request.xhr?
	#   if @game.save
	#   	erb :_new_game_layout, layout: false, locals: {game: @game}
	#   else
	#   	flash[:error] = "Try again"
	#   	# redirect '/games/new'
	#   end
	# else
		if @game.save
			redirect "/games/#{@game.id}"
		else
	  	flash[:error] = "Try again"
			redirect '/games/new'
		end
	# end
end

#SHOW
get '/games/:id' do
	@game = Game.find_by(id: params[:id])
	erb :"/games/show"
end

#EDIT
get '/games/:id/edit' do

end

#UPDATE
put '/games/:id' do

end

#DELETE
delete '/games/:id' do

end
