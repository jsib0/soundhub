class Favtrack < ActiveRecord::Base
  validates :track_id, uniqueness: true
  belongs_to :user
end
