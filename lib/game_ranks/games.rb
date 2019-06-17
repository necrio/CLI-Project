  class GameRanks::Games
    attr_accessor :title, :genre, :release_date, :votes, :score, :rating

    @@all = []

    def initialize(title, genre, release_date, votes, score, rating)
      @title = title
        @genre = genre
        @release_date = release_date
        @votes = votes
        @score = score
        @rating = rating
        
    end


    def self.all
      @@all
    end

    def self.find(id)
      self.all[id-1]
    end


    def save
      @@all << self
    end

    def self.create(game_title, game_genre, release_date, votes, score, rating)
      game = self.new(game_title, game_genre, release_date, votes, score, rating)
      game.save
      game
    end



  end