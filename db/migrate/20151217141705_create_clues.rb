class CreateClues < ActiveRecord::Migration
  def change
    create_table :clues do |t|
      t.string :text
      t.integer :pt_value
      t.references :game
      t.timestamps
    end
  end
end
