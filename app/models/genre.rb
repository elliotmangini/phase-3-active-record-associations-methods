class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.count
  end

  def artist_count
    artists.count
  end

  def all_artist_names
    artists.map do |artist|
      artist.name
    end
  end
end
