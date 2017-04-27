class CreateFavalbums < ActiveRecord::Migration
  def change
    create_table :favalbums do |t|
      t.string :name
      t.string :artist
      t.integer :popularity
      t.string :releasedate
      t.references :user, index: true, foreign_key: true
      t.string :album_id

      t.timestamps null: false
    end
  end
end
