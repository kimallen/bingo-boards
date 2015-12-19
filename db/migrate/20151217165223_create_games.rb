class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.string :theme
      t.references :user
      t.timestamps
    end
  end
end
