get '/games/:id/boards' do
	@game = Game.find_by(id: params[:id])
	p @board = @game.generate_board(@game.clues)
	@width = 5
	@size = 5
	erb :'/boards/show'
end