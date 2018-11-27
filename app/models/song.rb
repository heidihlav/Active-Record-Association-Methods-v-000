class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    # drake = self.new# when this method is called it should assign the song's artist to Drake
    song.name = "Drake"
  end
end
