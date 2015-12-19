class CreateGamesRounds < ActiveRecord::Migration
  def change
    create_table :games_rounds do |t|
      t.references :game
      t.references :round
      t.timestamps
    end
  end
end
