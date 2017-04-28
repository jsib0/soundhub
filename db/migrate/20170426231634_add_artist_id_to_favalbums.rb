class AddArtistIdToFavalbums < ActiveRecord::Migration
  def change
    add_column :favalbums, :artist_id, :string
  end
end
