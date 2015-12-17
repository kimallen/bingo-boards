class CreateSet < ActiveRecord::Migration
  def change
    create_table :sets do |t|
      t.string :name
      t.string :theme
      t.references :user
      t.timestamps
    end
  end
end
