class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    # drake = self.new# when this method is called it should assign the song's artist to Drake
    # drake =
    # self.artist = drake
    self.find_or_create_by(name: "Forever") do |a|
      a.name = "Drake"
    end
  end
end
