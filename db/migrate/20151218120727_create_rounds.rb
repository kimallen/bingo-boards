class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.string :random_url
      t.timestamps
    end
  end
end
