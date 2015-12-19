class CreatePlayersRounds < ActiveRecord::Migration
  def change
    create_table :players_rounds do |t|
      t.references :player
      t.references :round
      t.timestamps
    end
  end
end
