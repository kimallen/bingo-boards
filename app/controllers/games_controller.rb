#INDEX
get '/games' do
  @games = Game.all
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