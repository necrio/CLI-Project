require "games/version"

module Games
  class game
    attr_accessor :title, :genre, :release_date

    @@all = []

    def initialize(title, genre, release_date)
      @title = title
        @genre = genre
        @release_date = release_date
    end

    def self.all
      @@all
    end

    def save
      @@all << self
    end

    def self.create(title, genre, release_date)
      game = self.new(title, genre, release_date)
      game.save
      game
    end

  end
end
