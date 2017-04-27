class Favartist < ActiveRecord::Base
  validates :artist_id, uniqueness: true
  belongs_to :user
end
