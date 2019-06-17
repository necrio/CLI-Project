require_relative './games'
require 'pry'
class GameRanks::Scraper
      def self.ranks
        
        url = 'https://steam250.com/tag/indie'
        unparsed_page = HTTParty.get(url)
        parsed_page = Nokogiri::HTML(unparsed_page)
      
        n = 0
          parsed_page.css('.main.ranking div:nth-child(2)').each do |game|
              game_title = game.css('span.title').text
              game_genre = game.css('a.genre').text.strip
              release_date = game.css('span.date').text

      
              votes = parsed_page.css('div:nth-child(3) > span.votes')[n].text
              score = parsed_page.css('div:nth-child(3) > span.score')[n].text
              rating = parsed_page.css('div:nth-child(3) > span.rating')[n].text
              
              new_game = GameRanks::Games.create(game_title, game_genre, release_date, votes, score, rating)
              n += 1      
                end
          
          GameRanks::Games.all
              
            
        end

   
    
end



