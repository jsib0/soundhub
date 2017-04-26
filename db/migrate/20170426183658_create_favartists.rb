class CreateFavartists < ActiveRecord::Migration
  def change
    create_table :favartists do |t|
      t.string :name
      t.references :user, index: true, foreign_key: true
      t.string :artist_id

      t.timestamps null: false
    end
  end
end
