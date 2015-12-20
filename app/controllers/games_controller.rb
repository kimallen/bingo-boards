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
