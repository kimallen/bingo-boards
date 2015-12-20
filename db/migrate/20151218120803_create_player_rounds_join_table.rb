class CreatePlayerRoundsJoinTable < ActiveRecord::Migration
  def change
    create_table :player_rounds, id: false do |t|
      t.references :player
      t.references :round
      t.timestamps
    end
  end
end
