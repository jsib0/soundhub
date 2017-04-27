class Favalbum < ActiveRecord::Base
  validates :album_id, uniqueness: true
  belongs_to :user
end
