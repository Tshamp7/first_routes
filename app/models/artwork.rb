class Artwork < ApplicationRecord
  validates :title, presence: true
  validates :artist_id, presence: true
  validates :image_url, presence: true
  validates :artist_id, uniqueness: { scope: :title }

  belongs_to :artist,
    class_name: 'User',
    foreign_key: :artist_id,
    primary_key: :id

  has_many :views,
    class_name: 'ArtworkShare',
    foreign_key: :artwork_id,
    primary_key: :id

  has_many :shared_viewers, through: :views, source: :viewer
end