class CreateClues < ActiveRecord::Migration
  def change
    create_table :clues do |t|
      t.string :text
      t.integer :pt_value
      t.references :set
      t.references :user
      t.timestamps
    end
  end
end
