class CreateFavtracks < ActiveRecord::Migration
  def change
    create_table :favtracks do |t|
      t.string :name
      t.string :track_id
      t.string :album_id
      t.string :album
      t.integer :popularity
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
